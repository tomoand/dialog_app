import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  confirm() {
    var flag = window.confirm("本当に削除しますか？");
    if (!flag){
      event.preventDefault();
    }
  }
}
