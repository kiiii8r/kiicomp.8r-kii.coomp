trigger RestrictContactByName on Contact (before insert, before update) {
	
	//挿入や更新の前に、コンタクトに無効なデータがないかチェックする
	For (Contact c : Trigger.New) {
		if(c.LastName == 'INVALIDNAME') {	//invalidnameは無効です。
			c.AddError('The Last Name "'+c.LastName+'" is not allowed for DML');
		}
	}
}