# Blog 0 [9.6.2019]

### Lab A - Intro to Docker  

After getting docker installed on Windows, I was having trouble pulling the hello world image.

![typo](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/typo.png)

After some googling initially I thought I had to create a docker account and do 'docker login'. I found this particularly interesting after I logged in:

![password](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/unencrypted.png)

I tried the pull again, but I realised that I was having the same issue. I then noticed I had made a stupid typo and that the image name was "hello-world" not "hello world".

Some other issues I was having was scp. My username on my container was different than my CSUN UID which kept trying to log me in as
```
<container-username>@ssh.sandbox.csun.edu
```

I kept running into this issue as I was going through the rest of the assignment. I ended up deciding on just changing my username to my CSUN UID as a workaround. I had to exit the container and run this command to log back in as root:
```
docker exec -u 0 -it mycontainer bash
```
As root I renamed my user account, changed the home directory, and changed some permissions for my account.
