# My Project
#### Write a script to get a path from the user, make a backup, compress it and send it to an S3 bucket. For S3 storage, you can use Amazon S3 or MinIO in on-perm environments.

# use the project
* First of all you have to create a user on aws.amazon.com, write iam on the console and the select on users and create the user. You have to pay attention to add the AmazonS3FullAccess policy to the user, after the user is created you can click on it, then click on the Permissions tab and finally on the Permissions Policy part you can check if you have assined as well the mentioned policy.
#### 2) After that go inside the created user click on Security Credentials tab and then in the Acces Key part you have to generate the key, in this way you have Access Key ID and Secret Access Key. 
#### 3) Open your terminal and write 'aws configure'. You must use the key generated in this section
#### 4) write 'aws sts get-caller-identity' in the terminal and you have to see an output like this : '197395774601    arn:aws:iam::197395774601:user/faraz   AIDH3FLSYYUI2YAQVBL4L'
#### 1) Transform the project into an executable project : chmod +x BachupToStorage.sh
#### 2) run the program passing a path as an argument where you want to do backup: ./BackupToStorage.sh --path /your-path
