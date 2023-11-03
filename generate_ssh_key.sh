#!/bin/bash

# Check if an SSH key already exists
if [ -f ~/.ssh/id_rsa ]; then
  echo "SSH key already exists. Skipping key generation."
else
  # Prompt for an email address associated with your GitHub account
  read -p "Enter your GitHub email address: " email

  # Generate an SSH key with the provided email address
  ssh-keygen -t rsa -b 4096 -C "$email"

  # Start the SSH agent and add your key
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  # Determine the OS and copy the public key accordingly
  if [ "$(uname)" == "Darwin" ]; then
    # macOS
    cat ~/.ssh/id_rsa.pub | pbcopy
    echo "Your SSH key has been generated, added to the SSH agent, and copied to the clipboard."
    echo "The public key is ready to be pasted into your GitHub account."
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Linux
    cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
    echo "Your SSH key has been generated, added to the SSH agent, and copied to the clipboard."
    echo "The public key is ready to be pasted into your GitHub account."
  elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Windows
    cat ~/.ssh/id_rsa.pub | clip
    echo "Windows OS detected. The public key has been copied to your clipboard."
    echo "You can now paste it into your GitHub account settings."
  else
    echo "Unsupported operating system. Please manually copy the following public key to your clipboard:"
    cat ~/.ssh/id_rsa.pub
  fi
fi
