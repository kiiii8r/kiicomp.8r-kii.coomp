import { LightningElement, track } from 'lwc';
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

  @track address={
    city: "kanagawa",
    postcode: "000-0000",
    country: "Japan"
  }

  trackHandler(event){
    this.address.city = event.target.value
  }

  // LWCのゲッター
  users = ["john", "smith", "nik"]
  num1 = 10
  num2 = 20
  // this.firstUser = this.users[0]

  get firstUser(){
    return this.users[0].toUpperCase()
  }

  get multiply(){
    return this.num1*this.num2
  }

}