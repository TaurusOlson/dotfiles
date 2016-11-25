# Neomutt configuration

* Single Gmail account
* Offlineimap
* Passwords encrypted with GPG
* msmtp to send emails


# Installation

Copy the .mutt/ in your home directory then set your account.

```
cd ~/.mutt
sed -i 's/paulinejboone/<youraccount>/g' muttrc
sed -i 's/paulinejboone/<youraccount>/g' offlineimaprc
sed -i 's/paulinejboone/<youraccount>/g' mailboxes
```

Create the directory which will contain your emails and copy the offlineimap
config with:

```
make setup
```


# Requirements

* Offlineimap 
* Neomutt >= 1.7.1
