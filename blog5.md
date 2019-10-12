# Blog 5 

### Creating a EC2 instance for webserver

I accidentally used the Amazon AMI without being fully aware that it was not debian based. I switched to a Ubuntu Server instead since I was more familiar with it.

I ran into the issue of not being able to use the browser to ssh into the instance. I used putty and it took a while for me to realise that the user was "Ubuntu" and not "ec2-user".

Like the previous labs, I installed updates and apache2.

I noticed that I wasn't able to ssh into my instance through another device even with the private key which is something I will look into later. 
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html

This is the same for using linux subsystems. Even though I chmod 0400 the private key, it wouldn't allow me to use it.
![perm-denied](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/project0-permissiondenied.PNG)

I decided as a workaround I would just create a separate git repository and use git clone to retrieve all the files I would need for this webserver.
![git-clone](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/project0-gitclone.PNG)

Turns out I have to create this in oregon and I have to do this over again.