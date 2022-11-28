import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

export default class extends Controller {
	static values = { conversationId: Number };
	static targets = ["messages"];
	static values = { conversationId: Number, currentUserId: Number };

	connect() {
		this.channel = createConsumer().subscriptions.create(
			{ channel: "ConversationChannel", id: this.conversationIdValue },
			{ received: (data) => this.#insertMessageAndScrollDown(data) }
		);
		console.log(
			`Subscribed to the conversation with the id ${this.conversationIdValue}.`
		);
	}
	#justifyClass(currentUserIsSender) {
		return currentUserIsSender
			? "justify-content-end"
			: "justify-content-start";
	}

	#userStyleClass(currentUserIsSender) {
		return currentUserIsSender ? "sender-style" : "receiver-style";
	}

	#buildMessageElement(currentUserIsSender, message) {
		return `
      <div class="message-row d-flex ${this.#justifyClass(
				currentUserIsSender
			)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `;
	}

	#insertMessageAndScrollDown(data) {
		// Logic to know if the sender is the current_user
		const currentUserIsSender = this.currentUserIdValue === data.sender_id;

		// Creating the whole message from the `data.message` String
		const messageElement = this.#buildMessageElement(
			currentUserIsSender,
			data.message
		);

		this.messagesTarget.insertAdjacentHTML("beforeend", messageElement);
		this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
	}

	resetForm(event) {
		event.target.reset();
	}
	disconnect() {
		console.log("Unsubscribed from the chatroom");
		this.channel.unsubscribe();
	}
}
