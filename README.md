# Setup new macOS operating system

This installation mode has been tested on macOs Catalina

Install homebrew and xcode

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install git and python

```
brew install git python
```

Clone this repository

Install virtualenv

```
sudo pip3 install virtualenv
```

Create new virtualenv

```
virtualenv -p /usr/local/bin/python3 .venv
source .venv/bin/activate
```

Install Ansible

```
pip install ansible
```

Launch playbook

```
ansible-playbook macbook-setup/macbook_setup.yml --ask-become-pass --ask-vault-pass
```

# Based on

osx_defaults

* https://github.com/saghul/macOS-setup/blob/master/tasks/macos-defaults.yml
* https://github.com/ultimateboy/ansible.osx/tree/master/roles/ultimateboy.osxdefaults/tasks
* https://github.com/mathiasbynens/dotfiles/blob/master/.macos

Dock
* https://nickcharlton.net/posts/automating-macos-using-ansible.html