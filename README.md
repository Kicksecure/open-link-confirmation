# Asks for confirmation before opening links #

Asks before a link is (accidentally) opened in a browser. Links are opened in
x-www-browser.

Currently only the Tor Browser starter from the tb-starter package (by Whonix
developers) supports using open-link-confirmation. Shell wrappers could be
written to support other browsers as well.

On an Anonymity Gateway (when the anon-gw-base-files package is installed), it
honors the $EDITOR environment variable (falls back to kwrite if unset), asks
if a file should be opened in an editor before opening it and informs, that
opening links on a Gateway is unsupported for security reasons.

This package is produced independently of, and carries no guarantee from,
The Tor Project.
## How to install `open-link-confirmation` using apt-get ##

1\. Download Whonix's Signing Key.

```
wget https://www.whonix.org/patrick.asc
```

Users can [check Whonix Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key) for better security.

2\. Add Whonix's signing key.

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/derivative.gpg add ~/patrick.asc
```

3\. Add Whonix's APT repository.

```
echo "deb https://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `open-link-confirmation`.

```
sudo apt-get install open-link-confirmation
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions. (Replace `generic-package` with the actual name of this package `open-link-confirmation`.)

* **A)** [easy](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`open-link-confirmation` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
