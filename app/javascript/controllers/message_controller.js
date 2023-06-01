import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "messageCard" ]

    connect() {
        if (this.data.get('user-id') == this.data.get('current-user-id')) {
        this.messageCardTarget.classList.remove("mr-auto")
        this.messageCardTarget.classList.add("ml-auto")
        } else {
        this.messageCardTarget.classList.remove("ml-auto")
        this.messageCardTarget.classList.add("mr-auto")
        }
    }
}
