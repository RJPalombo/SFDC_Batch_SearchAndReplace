SFDC_Batch_SearchAndReplace
===========================

The code taken from developerforce.com plus a new test class for coverage.

USAGE EXAMPLE
-------------
<pre>
string Query = 'SELECT Id, Name FROM Account LIMIT 200';
string sObj = 'Account';
string fld = 'Name';
string val = 'New Name';
SearchAndReplace changeName = new SearchAndReplace(Query, sObj, fld, val);
Id batchprocessid = Database.executeBatch(changeName);
</pre>

COMMENTS
--------
I find this very useful for times when you need to create a trigger or workflow which requires a mass in order to fire the workflow or trigger after deployments.
