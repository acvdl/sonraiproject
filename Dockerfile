# Anneke van der Laan
# Sonrai Security Project

# Not sure what image to use yet
FROM ubuntu

# Using shell form for commands
CMD grep "FullAccess" test/user_policies.json | sort -u | wc -l

# So far this finds the number of unique policies with a name that contains the text "FullAccess".
# I assumed that no user's name would contain "FullAccess". If I was dealing with a different String of characters I would have to be more careful.

# STILL TO DO:
#   - get the file to be input from AWS not command line when I run this Dockerfile
#   - store the result value in a variable
#   - create a new JSON file that holds the data: { count: "X" }
#   - upload that new JSON file to the S3 bucket
