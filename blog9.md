
# Blog 9 [11.8.19]

### Splunk Search Language - Basic Commands

When performing basic searches on splunk you might want to do some calculations or create visuals from your searches. 

#### Commands:
 - **fields**: includes or excludes fields from results
 - **table**: creates a table from your results
 - **rename**: renames fields for results
 - **dedup**: removes events w/ duplicate values
 - **sort**: sorts in ascending(+) or descending(-) order
 - **top**: outputs the top most common results of the field specified
 - **rare**: output the least common results of the field specified
 - **stats**: produces statistics of results 
 - **eval**: evaluates mathematical, string, and boolean expressions

When using splunk commands, you must first have your search terms already defined. **Search terms** is the initial part of your search and usually located at the beginning of the pipeline. To use splunk commands, pipe ```|``` your search terms into the command of your choice. 

Syntax for using commands:
```
index=main sourcetype="access_combined_wcookie" status=200 file=success.do | table action, JSESSIONID, status
```
Output:
![splunk-table](https://github.com/cacaocat-syr/cacaocat-syr.github.io/blob/master/Images/splunk-table-command.PNG?raw=true)
Here you are requesting events from the index of ```main``` , has the sourcetype of ```access_combined_wcookie``` , with status of ```200```, and is associated with file ```success.do```. These events are then piped into the table command to create a table for the specified fields: ```action```, ```JSESSIONID```, and ```status```.

### More info on commands

**FIELDS**
The **fields** command includes or excludes fields from your search . Field extraction is costly while limiting fields makes your search more efficient.  As a general rule, inclusion is better than exclusion as it improves performance of your search. 

**TABLE**
Creates a table for your search results with the fields specified. You can change the order of the columns by simply changing the order of the fields.

**RENAME**
Renames fields specified. an *AS* clause is required to use this command. When renaming a field, the new name must be surrounded by quotes ```" " ```.
Syntax:
```
<search terms> | rename product AS "Product Name"
```
If a field is renamed, its original name cannot be used later down the pipeline.

**DEDUP**
Removes events with duplicate values.

**SORT**
Can sort in ascending or descending order where ascending is referred by + and descending is referred by -. If there is a space between the preceding operator and all the field names, it will apply to all the fields specified. 

**TOP**
Returns the most common values of a field. By default, it will only return 10 results. This can be changed with the ```limit``` argument
Syntax:
```
<search terms> | top product limit=20
```
If you want all results returned ```limit=0``` is used.

**RARE**
Similar to **top**, it returns the least common values. Default is 10 results returned. The limit argument also applies.

**STATS**
Produces statistics of your results. Some functions that can be used with the stats command:
 - *count*: returns number of events
 - *distinct count*: counts unique values
 - *sum*: sum of numeric values
 - *avg*: returns average of numeric values
 - *min*: returns the minimum numeric value
 - *max*: returns maximum numeric value
 - *list*: lists all values of a field
 - *values*: list unique values of a field
 
**EVAL**
Calculates an expression and puts the resulting value into a search results field. If the field name that you specify does not match a field in the output, a new field is added to the search results. If the field name that you specify matches a field name that already exists in the search results, the results of the eval expression overwrite the values in that field.
