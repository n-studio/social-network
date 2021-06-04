import { Controller } from "stimulus"

export default class extends Controller {
  close() {
    if (this.element) {
      this.element.remove()
    }
  }
}
