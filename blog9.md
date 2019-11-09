# Blog 9 [11.8.19]

### Splunk Search Language - Basic Commands

When performing basic searches on splunk you might want to do some calculations or create visuals from your searches. 

Commands:
 - fields: includes or excludes fields from results
 - table: creates a table from your results
 - rename: renames fields for results
 - dedup: removes events w/ duplicate values
 - sort: sorts in ascending(+) or descending(-) order
 - top: outputs the top most common results of the field specified
 - rare: output the least common results of the field specified
 - stats: produces statistics of results 
 - eval: evaluates mathematical, string, and boolean expressions

Syntax for using commands:
```
index=main sourcetype="access_combined_wcookie" status=200 file=success.do | table action, JSESSIONID, status
```
Output:
![splunk-table](https://github.com/cacaocat-syr/cacaocat-syr.github.io/blob/master/Images/splunk-table-command.PNG?raw=true)
Here you are requesting events from the index of ```main``` , has the sourcetype of ```access_combined_wcookie``` , with status of ```200```, and is associated with file ```success.do```. These events are then piped into the table command to create a table for the specified fields: ```action```, ```JSESSIONID```, and ```status```.

