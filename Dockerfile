# Anneke van der Laan
# Sonrai Security Project

# I'm not sure how to decide which Image to use
FROM ubuntu

# COPY THE FILE
# This works in the command line. Figuring out how to make it work in this image.
# Right now aws is not recognized in this image. I am thinking that I might have to
# change ubuntu to another image from Docker Hub that includes aws.
# aws s3 cp s3://sonraiprojectbucket/user_policies.json .

# COUNT THE NUMBER OF UNIQUE POLICIES IN THE FILE
# The following command finds the number of unique policies with a name that contains the text "FullAccess".
# I assumed that no user's name would contain "FullAccess". If I was dealing with a different String of characters I would have to be more careful.
CMD grep "FullAccess" test/user_policies.json | sort -u | wc -l )

# STORE THIS NUMBER IN A NEW JSON FILE

# UPLOAD NEW JSON FILE TO S3 BUCKET

# STILL TO DO:
#   - get the file to be input from AWS not command line when I run this Dockerfile
#   - store the number of unique policies in a variable
#   - create a new JSON file that holds the data: { count: "X" }
#   - upload that new JSON file to the S3 bucket
