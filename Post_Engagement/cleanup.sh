#!/bin/bash
# Just a simple script to clean up and make life a little easier :D
# I recommend executing with '> /dev/null' to ignore some errors when files don't play nice. 
# Author: Parzival

# Delete history
echo "" > /root/.bash_history
echo "" > ~/.bash_history
echo "" > /root/.zsh_history
echo "" ~/.zsh_history

# Delete Metasploit l00ts
echo "" > /root/.msf4/history
rm -rf /root/.msf4/*

echo "" > ~/.msf4/history
rm -rf ~/.msf4/*

# Delete John files
rm -rf /root/.john/*
rm -rf ~/.john/*

# Delete Hashcat dfiles
rm -rf /root/.hashcat/*.potfile
rm -rf /root/.hashcat/sessions
rm -rf ~/.hashcat/*.potfile
rm -rf ~/.hashcat/sessions

# Miscellanious cleanups
rm -rf /root/tools
rm -rf ~/tools
rm -rf /tmp/*
rm -rf /opt/nessus
rm -rf /root/evidence
rm -rf ~/evidence
rm -rf /root/.cme
rm -rf ~/.cme
rm -rf ~/.manspider
rm -rf /root/.manspider

# Kill all active sessions so we don't leak data
tmux kill-server
pkill screen

# Kill Metasploit Workspaces
msfconsole -q -x 'workspace -D' &
