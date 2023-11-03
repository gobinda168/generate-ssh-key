# SSH Key Generation Script for GitHub

This script automates the process of generating an SSH key for use with GitHub. It detects the operating system and copies the generated public key to the clipboard, making it easy to add the key to your GitHub account.

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- [Git](https://git-scm.com/) (for Windows users, ensure Git Bash is installed)

## Usage

1. Clone or download this repository to your local machine.
2. Open a terminal or command prompt.
3. Navigate to the directory where the script is located.

### Windows, macOS, and Linux

1. Run the script using the following command:

bash```
chmod +x generate_github_ssh_key.sh
```
This command will make the script executable.

### Windows

1. Run the script using Git Bash or another compatible terminal.
2. Follow the on-screen instructions to generate your SSH key.
3. The public key will be automatically copied to your clipboard.

### macOS

1. Run the script in your macOS terminal.
2. Follow the on-screen instructions to generate your SSH key.
3. The public key will be automatically copied to your clipboard.
4. Paste the public key into your GitHub account.

### Linux

1. Run the script in your Linux terminal.
2. Follow the on-screen instructions to generate your SSH key.
3. The public key will be automatically copied to your clipboard.
4. Paste the public key into your GitHub account.

## Script Details

- The script checks if an SSH key already exists and skips key generation if a key is found.
- It prompts for the email address associated with your GitHub account.
- The script generates a new SSH key using the provided email address.
- It starts the SSH agent and adds the newly generated key to it.
- The script detects the operating system and copies the public key accordingly, allowing for easy GitHub setup.

## Note

- If you encounter issues or errors during key generation, please ensure that `ssh-keygen` and `ssh-agent` are installed and properly configured on your system.
- Make sure to paste the public key into your [GitHub SSH settings](https://github.com/settings/keys) to enable secure access to your GitHub repositories.

Enjoy using your SSH key for secure GitHub interactions!

