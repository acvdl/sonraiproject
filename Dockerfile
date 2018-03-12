# Anneke van der Laan
# Sonrai Security Project
# 12 March 2018

# Use the linusbrew/linuxbrew library in order to be able to download the awscli

FROM linuxbrew/linuxbrew
RUN brew install awscli


# CMD does the following:
# • Sets credentials so that call to configure works properly (I understand that you are not
#   supposed to hard code these access keys, but I'm not sure how else to provide them (yet)).
# • Configures AWS CLI options.
# • Downloads (copies) the user_policies.json file from the S3 bucket sonraiprojectbucket.
# • Counts the number of unique policies with a name that contains the text "FullAccess".
#   I held the assumption that no user's name would contain "FullAccess". If I was dealing with a
#   different String of characters I would have to be more careful to detect that the line
#   containing "FullAccess" was indicating the name of the policy.
# • Stores the data "{count: 'X'}" in a new JSON file called result_file.json.
# • Uploads this new file to the S3 bucket sonraiprojectbucket

CMD aws configure set aws_access_key_id AKIAIGD2OGJY3FZUKTMQ; \
    aws configure set aws_secret_access_key 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; \
    aws configure; \
    aws s3 cp s3://sonraiprojectbucket/user_policies.json .; \
    grep "FullAccess" user_policies.json | sort -u | wc -l | awk '{print "{count: "$1"}"}' > result_file.json; \
    aws s3 cp ./result_file.json s3://sonraiprojectbucket/
