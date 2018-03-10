# Anneke van der Laan
# Sonrai Security Project

# Not sure what image to use yet
FROM ubuntu

# Using shell form for commands
CMD grep "FullAccess" test/user_policies.json | sort -u | wc -l
