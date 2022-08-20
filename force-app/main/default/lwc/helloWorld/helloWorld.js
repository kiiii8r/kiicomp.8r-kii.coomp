import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  name // 未定義
  age=30;
  fullname = "test san"
  showData = false
  details={
    name:"dummy",
    place:"Japan"
  }
  userList = ["A","B","C"]
  title = "aura"

  // 双方向バインディング
  changeHandler(event){
    this.title = event.target.value
  }

  address={
    city: "kanagawa",
    postcode: 0000000,
    country: "Japan"
  }
}