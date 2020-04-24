#!/bin/sh
curl -sS -u $GITHUB_USERNAME:$GITHUB_TOKEN 'https://api.github.com/user/repos?per_page=10000' | jq -r '.[] .ssh_url' | sed -e 's/.*:\(.*\)\..*/\1/' | xargs -I{} git clone git@github.com:{}.git /tmp/gh-clone/{}; mv /tmp/gh-clone/* $1/; rm -r /tmp/gh-clone
