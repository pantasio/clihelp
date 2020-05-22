<!-- # ----------------------------- -->

# Using tool Gaman
## Create 2 ssh-key

    $ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

### List all ssh key
    
    $ gaman list

### Switch to a specific ssh key

    $ gaman switch

And then follow the inline-instruction.
Or

    $ gaman switch key_index

with key_index is a number shown in list method.

### Create new ssh key

    $ gaman new -e your_email@domain.com

### Check current user that connect to github via ssh

    $ gaman current_user

### Check Gaman version

    $ gaman -v (or `--version`)


<!-- # ----------------------------- -->
# Install Gaman tool

Required:
    ruby 1.9 or greater (see https://www.ruby-lang.org/en/installation )
    rubygems (included with ruby; see https://github.com/rubygems/rubygems )

Recommended:
    rvm for controlling your versions of ruby (see: https://github.com/rvm/rvm )

#### Installation

Install as you would any other ruby gem:

    $ gem install gaman
