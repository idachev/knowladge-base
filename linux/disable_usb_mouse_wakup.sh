https://unix.stackexchange.com/questions/417956/make-changes-to-proc-acpi-wakeup-permanent/532839#532839

For a USB mouse or keyboard, you can use a udev rule to make the setting permanent. First, look up the PCI vendor ID of your mouse/keyboard using lsusb. For my mouse, it's 046d:

Bus 001 Device 006: ID 046d:c52b Logitech, Inc. Unifying Receiver

Then create a "rules" file like my /etc/udev/rules.d/logitech.rules, only replace "046d" with the vendor ID of your own device:

ACTION=="add", SUBSYSTEM=="usb", DRIVERS=="usb", ATTRS{idVendor}=="046d", ATTR{power/wakeup}="disabled"

