# Blog 11 [11.22.2019]

### Splunk Best Practices 
When it comes to performing searches in Splunk, you may notice that the more data that is stored and indexed, the longer it may take to execute your search. Since Splunk can ingest large amounts of data, it can take a long time to perform one search. There are ways of making your searches more efficient. 
##### Time 
*Time* is the best way to limit your search to make it more efficient. If you only want to search for events within a specified time period, you can use the time picker on the right of the search bar to select a time. 
![splunk-time-picker](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/splunk-time-picker.jpg)
You may also specify time in your search using:

- ```earliest=```
- ```latest=```

If only the ```earliest``` modifier is used, ```latest``` is defaulted to the current time. If ```latest``` is used, ```earliest``` must be also used.

##### Index, source, sourcetype, host
Specifying which *index* to look at helps narrow down where you want Splunk to look. As a reminder, an index is a directory that is categorized, timestamped, and contains data. Narrowing your searches by *index*, *source*, *sourcetype*, and *host* fields help make your searches more efficient by only including data that has those fields. 

##### Inclusion, not Exclusion
*Index*, *source*, *sourcetype*, and *host* are not the only fields you can limit your searches with. You can limit your searches with any existing field. By including the fields that you want in your search, it makes your search more efficient. Using the 
**fields** command, you can include fields using **+**. Excluding **-** fields from your search does not improve efficiency, however.
