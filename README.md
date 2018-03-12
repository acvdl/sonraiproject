# Sonrai Project

For this project, I created an S3 bucket in AWS called sonraiprojectbucket and uploaded the given JSON file called user_policies.json to the bucket. I then created a docker image that is able to download user_policies.json from the S3 bucket, count the number of unique policies with a name that contains "FullAccess", store this count in a new JSON file called result_file.json, and upload this new JSON file to the S3 bucket.

## Using the Dockerfile

1) Download the Dockerfile
2) Navigate into the folder containing the Dockerfile
3) Build docker image with `docker build -t sonrai-project .`
4) Run the commands in the new container with `docker run sonrai-project `

## Success On My Machine

Building the docker image:

![alt text](https://github.com/acvdl/sonraiproject/blob/master/Screen%20Shot%202018-03-12%20at%201.14.50%20PM.png)

Running the commands in a new container:

![alt text](https://github.com/acvdl/sonraiproject/blob/master/Screen%20Shot%202018-03-12%20at%201.15.13%20PM.png)

The S3 bucket now contains result_file.json:

![alt text](https://github.com/acvdl/sonraiproject/blob/master/Screen%20Shot%202018-03-12%20at%201.26.21%20PM.png)
