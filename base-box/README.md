# creating a base box

This is a method for creating a base box where all the shared parts
used by vagrant-kafka are already installed.  Allows for bringing the
whole experimental setup up much quicker.

    vagrant up
    vagrant package --output vkbase.box
    vagrant box add vkbase vkbase.box

base-box_default_1463646909376_5732