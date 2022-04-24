public class VerifyDate {
	
	//2つの日付に対する潜在的なチェックを処理する方法
	public static Date CheckDates(Date date1, Date date2) {
		//date2がdate1から30日以内であれば、date2を使用する。 それ以外の場合は月末を使用
		if(DateWithin30Days(date1,date2)) {
			return date2;
		} else {
			return SetEndOfMonthDate(date1);
		}
	}
	
	//日付2が日付1から30日以内にあるかどうかを確認する方法
	private static Boolean DateWithin30Days(Date date1, Date date2) {
	// date2が過去のものであるかをチェック
        	if( date2 < date1) { return false; }
        
        // date2がdate1から30日以内(>=)であることを確認する
        	Date date30Days = date1.addDays(30); //date1から30日後の日付を作成する
		if( date2 >= date30Days ) { return false; }
		else { return true; }
	}

	//指定された日付の月末を返すメソッド
	private static Date SetEndOfMonthDate(Date date1) {
		Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
		return lastDay;
	}

}