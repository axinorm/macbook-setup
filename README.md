# Setup new macOS operating system

This installation mode has been tested on macOS Sonoma.

Before starting, you have to allow ``Full Disk Access`` for Terminal app. You can setup this in ``Privacy & Security`` > ``Full Disk Access``.

In order to save time, you can run ``./setup.sh`` directly on your mac.

Otherwise, you can follow the following commands:

* Install macOS command line and homebrew :

  ```sh
  xcode-select --install
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

* Install Ansible

  ```sh
  brew install ansible
  ```

* Clone this repository

  ```sh
  git clone https://github.com/axinorm/macbook-setup
  cd macbook-setup
  ```

* Update ``inventory/group_vars/mymac.yml`` and run ``setup.yml`` playbook

  ```sh
  ansible-playbook setup.yml --inventory inventory/hosts --ask-become-pass
  ```

# Based on

osx_defaults :
* [saghul/macOS-setup](https://github.com/saghul/macOS-setup/blob/master/tasks/macos-defaults.yml)
* [ultimateboy/ansible.osx](https://github.com/ultimateboy/ansible.osx/tree/master/roles/ultimateboy.osxdefaults/tasks)
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)

Dock :
* [nickcharlton.net - Automating macOS using Ansible](https://nickcharlton.net/posts/automating-macos-using-ansible.html)

macOS App Store :
* [ayltai/ansible-macos-appstore](https://github.com/ayltai/ansible-macos-appstore)

Global settings with Shell scripts :
* [keith/dotfiles](https://github.com/keith/dotfiles/blob/main/osx/defaults.sh)
* [pawelgrzybek/dotfiles](https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh)
* [kdeldycke/dotfiles](https://github.com/kdeldycke/dotfiles/blob/main/macos-config.sh)
