Continued from last blog post


Some notes I’ve learned by reading the documentation on playbooks
- Playbooks are .yml (YAML) files
- Playbooks start with the YAML three dashes (---)

I have no idea what I'm doing or if I even have the syntax right so I decided to test out my playbook to see if it would run.
```
---
- hosts:localhost
  remote_user: root
  tasks:
   - name: install traceroute
     command: sudo apt-get install traceroute -y
   - name: install updates
     command: sudo apt-get update && sudo apt-get upgrade -y
```
![failed attempt](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/testing-ansiblepb.PNG)

And of course it doesn't work which is fine. Based on this article: https://gist.github.com/alces/caa3e7e5f46f9595f715f0f55eef65c1 I made changes to include:
```
- hosts: 127.0.0.1
  connection: local
```
and now my playbook is:
```
---
- hosts: 127.0.0.1
  connection: local
  tasks:
   - name: install traceroute
     command: sudo apt-get install traceroute -y
   - name: install updates
     command: sudo apt-get update && sudo apt-get upgrade -y
```
When I run this playbook it passed the first part but ran into problems with the tasks.
![failed attempt2](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/testing-ansiblepb2.PNG)
