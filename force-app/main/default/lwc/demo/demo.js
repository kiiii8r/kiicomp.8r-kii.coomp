import { LightningElement } from 'lwc';

export default class Demo extends LightningElement {
    // DOMの自動更新
    text = 'This text came from a JS prop';

    // DOMの自動更新２
    handleChange(event){
        this.text = event.target.value;
    }

    // 条件付き表示
    show = true;
    handleClick(){
        this.show = !this.show;
    }
}