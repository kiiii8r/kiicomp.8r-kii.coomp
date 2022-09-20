import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
    
    selected={} // for storing answers
    correctAnswers = 0 //to show the result
    isSubmitted = false // use to show the result

    myQuestions = [
        {
            id:'Question1',
            question:'次のうち、テンプレートループでないものはどれですか？',
            answers:{
                a:'for:each',
                b:'iterater',
                c:'map loop'
            },
            correctAnswer:'c'
        },
        {
            id:'Question2',
            question:'LWCコンポーネントフォルダで無効なファイルはどれですか？',
            answers:{
                a:'.svg',
                b:'.apex',
                c:'.js'
            },
            correctAnswer:'b'
        },
        {
            id:'Question3',
            question:'次のうち、ディレクティブでないものはどれでしょう。',
            answers:{
                a:'for:each',
                b:'if:true',
                c:'@track'
            },
            correctAnswer:'c'
        }
    ]

    // 送信ボタンを無効
    get allNotSelected(){
        return !(Object.keys(this.selected).length === this.myQuestions.length)
    }

    // 結果に対して動的なスタイルを適用
    get isScoredFull(){
        return `slds-text-heading_large ${this.myQuestions.length === this.correctAnswers? 
            'slds-text-color_success':'slds-text-color_error'}`
    }

    // オプションがクリックされるたびに changeHandler を呼び出す
    changeHandler(event){
        // console.log("name", event.target.name)
        // console.log("value", event.target.value)
        const  {name, value} = event.target
        // const name = event.target.name
        // const value = event.target.value
        this.selected={...this.selected, [name]:value}
        // 
    }

    // Submit押下時のイベント
    submitHandler(event){
        event.preventDefault()
        let correct = this.myQuestions.filter(item=>this.selected[item.id] === item.correctAnswer)
        this.correctAnswers = correct.length
        this.isSubmitted = true
        console.log("this.correctAnsers", this.correctAnswers)
    }

    // Reset押下時のイベント
    resetHandler(){
        this.selected = {}
        this.correctAnswers = 0
        this.isSubmitted = false
    }
}