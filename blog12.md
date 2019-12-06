# Blog 12 [12.6.19] 

### Restoring an EBS volume with Snapshots

When working with EC2 instances, it is always best practice to keep backups and snapshots of your instances. It is common that you run into problems and may want to restore to a point in time before those problems occurred. For example, you have accidentally misconfigured your EC2 instance and now it doesn't function as it was supposed to. On the bright side, you created snapshots of your instance of when it was working properly.

To restore your instance, you must create a new EBS volume using the snapshot and replace your EC2 instance's root volume. Sign in to your AWS console, go to EC2 Management, and scroll down to Elastic Block Store. Click on Volumes and then Create Volume.
![EBS-Console](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/ebs-console.png)

On the Create Volume page, set your volume size large enough to hold the data that you are cloning using the snapshot. Set the availability zone to match the EC2 instance that you will attach this volume to. For Snapshot ID, copy and paste the ID of the snapshot that you want to use for this volume. You also have the option to encrypt the volume. Then Create Volume.
![Create-Volume](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/ebs-create-volume.png)

You are redirected back to the EBS Console once your volume is created. Select your volume and click on Actions > Attach Volume.
![Attach-Volume](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/ebs-attach-volume.png)

On the window that appears, it asks for the name of the instance you want to attach your volume to as well as the device you want to attach. Since we want to replace the root volume, we would specify ```/dev/sda1``` as the device. 
- Note: Make sure your EC2 instance is stopped and your original volume is already detached. Before attempting this.

![Attach-Volume-Spec](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/ebs-attach-volume2.png)

