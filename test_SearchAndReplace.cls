@isTest
public class test_SearchAndReplace {

  public static testMethod void test_SearchAndReplaceFeature() {
	  Account[] accts = new list<Account>();
	  for(integer i = 0; i<200; i++) {
	    Account a = new Account(Name='testAccount'+'i', Industry='Other'); 
	    accts.add(a);
	  }
	  insert accts;
	  
	  Test.StartTest();
	    string Query = 'SELECT Id, Name FROM Account LIMIT 200';
	    string sObj = 'Account';
	    string fld = 'Name';
	    string val = 'New Name';
		  SearchAndReplace changeName = new SearchAndReplace(Query, sObj, fld, val);
		  Id batchprocessid = Database.executeBatch(changeName);
	  Test.StopTest();
	
	  System.AssertEquals( database.countquery('SELECT COUNT() FROM Account WHERE Name=\'' + 'New Name' + '\''), 200 );  
  }
  
}