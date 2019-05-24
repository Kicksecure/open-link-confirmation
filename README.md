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

1\. Add [Whonix's Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key).

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg adv --keyserver hkp://ipv4.pool.sks-keyservers.net:80 --recv-keys 916B8D99C38EAF5E8ADC7A2A8D66066A2EEACCDA
```

3\. Add Whonix's APT repository.

```
echo "deb http://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/whonix.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `open-link-confirmation`.

```
sudo apt-get install open-link-confirmation
```

## How to Build deb Package ##

Replace `apparmor-profile-torbrowser` with the actual name of this package with `open-link-confirmation` and see [instructions](https://www.whonix.org/wiki/Dev/Build_Documentation/apparmor-profile-torbrowser).

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`open-link-confirmation` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
