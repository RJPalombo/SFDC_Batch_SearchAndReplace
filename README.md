SFDC_Batch_SearchAndReplace
===========================

The code taken from developerforce.com plus a new test class for coverage.

USAGE EXAMPLE
-------------
Account name change:
<pre>
string Query = 'SELECT Id, Name FROM Account LIMIT 200';
string sObj = 'Account';
string fld = 'Name';
string val = 'New Name';
SearchAndReplace changeName = new SearchAndReplace(Query, sObj, fld, val);
Id batchprocessid = Database.executeBatch(changeName);
</pre>

If you need to adjust the batch size, just change the last line to something like this
<pre>
Id batchprocessid = Database.executeBatch(changeName, 1);
</pre>

Where 1 represents the smallest batch size. Keep in mind, the default is 200 as of the creation of this repo.

COMMENTS
--------
I find this very useful for times when you need to create a workflow/trigger which requires a mass update to an object in order to fire the workflow/trigger after deployments. Of course, this also works great for a simple search and replace use case!
