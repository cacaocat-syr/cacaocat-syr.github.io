# Blog 1 [9.13.2019]

### Lab 1 - LAMP Stack

NOTE: I forgot to take screenshots while I was going through problems with this lab. 

As an alternative to nano, I used vim for this lab since I was more familiar with vim. This is the same for the dockerfile that I had created as well.
```
sudo apt-get install vim git curl zip
```

One issue I had while trying to do composer install was that I kept getting an error saying that I did not have all the necessary requirements installed. After going through the lab again once more, I realised that not all the PHP libraries were installed due to a newline character.
![newline error](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/copy-paste-issue.PNG)
This issue only happened because I was lazy and I copied and pasted the entire command. After deleting the newline character and attempted composer install once more, I was able to proceed with the lab.

