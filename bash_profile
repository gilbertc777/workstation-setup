# Source .bashrc
if [ -f ~/.bashrc ]
then
  source ~/.bashrc
fi

# Terraform Setup
if [ -f ~/.terraform_profile ]
then
  source ~/.terraform_profile
fi

# User specific aliases
alias codews='cd /mnt/c/Users/cjgilber/Code-workspace'