https://unix.stackexchange.com/questions/417956/make-changes-to-proc-acpi-wakeup-permanent/532839#532839
https://askubuntu.com/questions/252743/how-do-i-prevent-mouse-movement-from-waking-up-a-suspended-computer

For a USB mouse or keyboard, you can use a udev rule to make the setting permanent. First, look up the PCI vendor ID of your mouse/keyboard using lsusb. For my mouse, it's 046d:

Bus 001 Device 006: ID 046d:c52b Logitech, Inc. Unifying Receiver

Then create a "rules" file like:
/etc/udev/rules.d/20-logitec.rules

Replace "046d" and "c52b" with the vendor ID/product ID of your own device:

ACTION=="add", SUBSYSTEM=="usb", DRIVERS=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c52b", ATTR{power/wakeup}="disabled"

After latest update 2024.01 need to do:


