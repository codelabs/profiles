# Start Here

Before going to *Install* section, run following commands

```
# Update existing yum packages
sudo yum update -y

# Install git
sudo yum install git -y

# Generate RSA key, to update github. Follow the prompts
ssh-keygen -t rsa

# Copy the RSA public key in your github account
cat $HOME/.ssh/id_rsa.pub

# After updating github account, clone the repo
git clone git@github.com:codelabs/profiles.git

cd profiles

```

# Setup

sh setup.sh

## Warning

Overwrites all profile files. Backup your profiles before running this

