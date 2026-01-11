# confirmation dialog before opening links or files #

Provides a safety wrapper for opening URLs or files. Prompts the user for
confirmation before launching the associated application, to prevent
accidental or unsafe link openings.

Integrates with msgcollector to display graphical confirmation and error
dialogs. Uses helper-scripts' sanitize-string to strip potentially malicious
Unicode or HTML input, trims displayed addresses to 128 characters, and logs
diagnostic information through msgcollector.

Detects execution context:
* On Kicksecure and Whonix-Workstation systems, links can be opened after
explicit confirmation in a supported browser.
* On Whonix-Gateway (anon-gw-base-files installed), opening of links is
blocked for security reasons. Local files are instead opened in the text
editor defined by $EDITOR (defaulting to FeatherPad or Mousepad).
* In Qubes OS Template, integrates with qvm-open-in-dvm for secure link
opening in disposable VMs. Handles refusal responses and displays
informative error dialogs.
* When booted in "sysmaint" (system maintenance) mode, link opening is
refused to avoid network activity during administrative sessions.

Automatically detects and uses installed browsers such as:
brave-browser, chromium, firefox, mullvad-browser, browser-choice,
or torbrowser (Whonix starter wrapper). Falls back to x-www-browser if
none of the above are available.

Provides infinite recursion protection to prevent self-invocation loops,
sets environment variables (OPEN_LINK_CONFIRMATION, OPEN_LINK_CONFIRMATION_COUNTER),
and adjusts XDG_CONFIG_DIRS and XDG_DATA_DIRS to register itself as a
compliant XDG handler and default $BROWSER.

Designed for security-focused environments such as Kicksecure, Whonix,
and Qubes OS.

This package is produced independently of, and carries no guarantee from,
The Tor Project.

## How to install `open-link-confirmation` using apt-get ##

1\. Download the APT Signing Key.

```
wget https://www.kicksecure.com/keys/derivative.asc
```

Users can [check the Signing Key](https://www.kicksecure.com/wiki/Signing_Key) for better security.

2\. Add the APT Signing Key.

```
sudo cp ~/derivative.asc /usr/share/keyrings/derivative.asc
```

3\. Add the derivative repository.

```
echo "deb [signed-by=/usr/share/keyrings/derivative.asc] https://deb.kicksecure.com trixie main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
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

See instructions.

NOTE: Replace `generic-package` with the actual name of this package `open-link-confirmation`.

* **A)** [easy](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.kicksecure.com)
* [Premium Support](https://www.kicksecure.com/wiki/Premium_Support)

## Donate ##

`open-link-confirmation` requires [donations](https://www.kicksecure.com/wiki/Donate) to stay alive!
