public class CounterPageController {
    public Integer Counter {get; set;}

    public CounterPageController () {
        this.Counter = 0;
    }

    public void doClick () {
        this.Counter += 1;
    }

    public void doHistoryBack() {
        this.Counter -= 1;
    }
}
