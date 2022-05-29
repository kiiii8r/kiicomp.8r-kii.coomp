/**
 * Covid19 Class
 * Track covid19 recovery
 * */
public class Covid19 {
    private Integer recoveredInArea = 0;
    public static Integer recoveredInCountry = 0;

    // クラス変数の値を設定するためのパラメータ化されたコンストラクタ
    public Covid19(Integer recoveredInArea){
        if(recoveredInArea < 0){
            this.recoveredInArea = 0;
        } else{
            this.recoveredInArea = recoveredInArea;
            recoveredInCountry += recoveredInArea;
        }
    }

    // recoveredInArea と recoveredInCountry のカウントを 1 ずつ増加させる。
    public void treatPatient(){
        recoveredInArea++;
        recoveredInCountry++;
    }

    // recoveredInArea の値を返す。
    public Integer getTreated() {
        return recoveredInArea;
    }
}