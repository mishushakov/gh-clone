#!/bin/sh
curl -sS -u $GITHUB_USERNAME:$GITHUB_TOKEN 'https://api.github.com/user/repos?per_page=10000' | grep -o '"ssh_url": "[^"]*' | grep -o '[^"]*$' | sed -e 's/.*:\(.*\)\..*/\1/' | xargs -I{} git clone https://$GITHUB_TOKEN@github.com/{}.git /tmp/gh-clone/{}; rsync --remove-source-files -a /tmp/gh-clone/* $1/; rm -r /tmp/gh-clone
