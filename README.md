# autostart-win-apps

Simple CMD script to start automatically applications beginning of the Working hours.

- [autostart-win-apps](#autostart-win-apps)
  - [Usage](#usage)
  - [Applications](#applications)
    - [Pageant](#pageant)
      - [Pageant - Variables](#pageant---variables)
    - [OpenVPN](#openvpn)
      - [OpenVPN - Variables](#openvpn---variables)
    - [KeePass](#keepass)
      - [KeePass - Variables](#keepass---variables)
    - [browser](#browser)
      - [browser - Variables](#browser---variables)
    - [Microsoft products](#microsoft-products)
      - [Microsoft Outlook](#microsoft-outlook)
      - [Microsoft Teams](#microsoft-teams)
      - [Microsoft OneNote](#microsoft-onenote)
      - [VSCode](#vscode)
        - [VSCode - Variables](#vscode---variables)

## Usage

**Prepare `key_paths`** variable. Define your SSH keys path.

**Start the script** (If you start it as an admin, all application, started by te script will run as admin. BTW **none of these applications requires admin privileges** to start).

**Choose** individual application start **within 5 seconds**, **or just leave it as is** to start all application.

## Applications

These are the main applications used by me for everyday work. Why I didn't run it automatically, when windows starts up? As I would like to use my computer outside of working days as well, without starting these applications.

### Pageant

[pageant](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) is an application, responsible to load my SSH keys, which will be used system-widely (for VSCode, for GIT, For PuTTY, for bash, for cygwin)

#### Pageant - Variables

`pageant_path` --> Path to the pageant executable.

`key_paths` --> Path to the SSH-keys, will be loaded by application.

### OpenVPN

[OpenVPN](https://openvpn.net/community-downloads/) is an open-source software application that implements virtual private network (VPN) techniques to create secure point-to-point or site-to-site connections.

#### OpenVPN - Variables

`openvpn_path` --> Path to the executable to start it.

### KeePass

[KeePass](https://keepass.info/) is a free and open-source password manager application that allows users to store and manage their passwords securely.

#### KeePass - Variables

`KeePass_path` --> Path to the executable to start it.

### browser

Choose your browser to start your desired pages. By default configured to use `chrome`.

#### browser - Variables

`browser` --> Your desired browser, like edge, chrome, firefox.

`pages` --> pages will be opened by your browser.

### Microsoft products

Script was created with `Microsoft Office Professional Plus 2021` products.

#### Microsoft Outlook

[Microsoft Outlook](https://outlook.live.com/owa/) is a personal information manager software program that is part of the Microsoft Office suite of applications.

#### Microsoft Teams

[Microsoft Teams](https://www.microsoft.com/en/microsoft-teams/log-in) is a collaborative communication platform that is part of the Microsoft Office 365 suite of applications.

#### Microsoft OneNote

[Microsoft OneNote](https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app) is a digital note-taking application that allows users to create and organize notes, ideas, and information in a digital notebook format.

#### VSCode

[Visual Studio Code](https://code.visualstudio.com/) is a source code editor with powerful developer tooling, like IntelliSense code completion and debugging.

##### VSCode - Variables

`vscode_path` --> Path to the executable / system variable to start it.
