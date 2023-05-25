How to change where the ecrypted dir to be mounted.

* Logoff the system.  No occurrences of your user account should be active.
* Login as root or a different sudo enabled account.
* Make sure that your account’s home directory is not mounted, using the `df` command.
  If it is still in place, use umount /home/username to un-mount the encrypted filesystem.
* Change the line `/home/<user>` to `/home/<user>/Private` in the 
  `/home/.ecryptfs/<user>/.ecryptfs/Private.mnt` file using your favorite text editor.
* mkdir /home/username/Private
* chown username.username Private
* Reboot the computer. (You can try restarting the cryptdisks init scripts, 
 but I didn’t have any luck with it.)

================================================================================
To copy the encrypted dir you need to copy
`/home/.ecryptfs/<user>/*` to your new `/home/...`

Rewrap the passphrase with the login one.

Make some links in your home directory:
```bash
ln -s /home/.ecryptfs/<user>/.ecryptfs ~/.ecryptfs
ln -s /home/.ecryptfs/<user>/.Private ~/.Private
```

And relogin with your passphrase.

