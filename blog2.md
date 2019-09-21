# Blog 2 [9.20.19]

### Lab 2 - Ansible Playbooks

Since I am using a Windows host, I created an ansible container where I will be doing my work.
![ansible container](“https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/using-container-for-ansible.PNG”)

When it came to starting the container I was unable to actually have it start despite running docker start <container>. Even with restarting the docker terminal I was still unable to run the container.
![container exiting](“https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/container-not-starting.PNG”)

From what I see online when researching this issue, I shouldn’t have a problem since the only difference between docker run and docker create is that the container is never started using create. Yet it does not work here. 
The only workaround is the use docker run instead.

