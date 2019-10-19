# Blog 6 [10.18.19]

### Setting up Key Pairs for multiple users for EC2 instance

To continue from last week's blog, I was not able to use scp nor ssh from a different device despite having the key. As a workaround I was forced to use gitclone. This was a VPC issue that Ron and Marcin had fixed.

The Project 0 guidlines required that we set up multiple keys for each user in our team. Thankfully I saved the URL link for that in the last blog. 

Through the console I generated three more keys. This can be found under Network & Security > Key Pairs

![Key Pair Page](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/project0-keypairs.PNG)

I downloaded all the keys needed and with puttygen I extracted the public keys to upload into the EC2 instance. 

With the command below I copied the public keys
```
scp -i <usable-key> <directory-where-pub-key-is-located> <user>@<ec2-instance>:<directory-where-you-want-it>
```

From there I SSHed back into the instance and appended all the public keys into ```.ssh/authorized_keys```
