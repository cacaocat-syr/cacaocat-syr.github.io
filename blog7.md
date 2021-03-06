
# Blog 7 [10.25.19]

### Splunk Introduction

This week I am going to talk about Splunk. I use it at work and have started doing the training online for free.

Splunk is a tool that collects large amounts of machine data which you can store, search, and organize.

Machine data is any data that comes from every piece of technology that we use and interact with.

The 5 main components of Splunk are:
 1. Index Data: comes from any source
- indexers collect data and process them to label and organise
- data is labeled with a sourcetype which help break down data into individual events and assigns timestamps
- data is stored in indices 
 2. Monitor & Alert: creating alerts in real time
 - monitor for specific conditions 
 - give automatic reponses and actions
 3. Search & Investigate:
 - query searches from indices
 - uses Splunk search language
 4. Report & Analyse: creating dashboards and reports
 5. Add Knowledge: effects data interpretation
- adds tags
- can be used to create reports


There are 3 main processing components when it comes to processing data.

Indexers
- retrieve and process data
- adds structure to data
- stores data into indices as events
- organised by age into directories

Search Heads
- handle search requests and distributes between indexers 
- indexers perform the search and return results to the search heads
- search heads return processed results to users
- search heads also handle dashboards and charts for users

Forwarders
- sends data to the indexers for sorting
- requires minimal resources
- installed on clients where data is originated
