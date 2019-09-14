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

### Creating the Dockerfile


While creating my dockerfile, my group had realised that we would run into issues while installing all the necessary PHP services since it prompts the user for input on region and location. This was solved by running the below command:
```
RUN ln -fs /usr/share/zoneinfo/US/Pacific /etc/localtime 
```
From what I can understand this force creates a symbolic link between the two files and that it would automatically detect that our zone is Pacfic rather than prompting at install.

The dockerfile I created requires that I have dir.conf, 000-default.conf, apache2.conf already configured existing in the same directory as the dockerfile itself. Running the dockerfile makes a backup of the default .conf files and replaces them with the ones you have on your local machine. Instead of rewriting those files, I copied those files from an already existing and configured apache server that I created for the lab. I used the below docker command to make copies:
```
docker cp <file>@<container ID> <file to host>
``` 

To make copies from host to container I used the command below. Apache2.conf is an example:
```
COPY ./apache2.conf /etc/apache2/
```
