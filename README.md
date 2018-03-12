# Sonrai Project

For this project, I created an S3 bucket in AWS called sonraiprojectbucket and uploaded the given JSON file called user_policies.json to the bucket. I then created a docker image that is able to download user_policies.json, count the number of unique policies with a name that contains "FullAccess", stores this count in a new JSON file called result_file.json, and uploads this new JSON file back to the S3 bucket.

## Using the Dockerfile

First I had to install docker onto my laptop, and then could run my Dockerfile using:

```
docker build -t sonrai-project .
docker run sonrai-project
```
