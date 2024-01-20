#!/bin/sh

set -e

wget https://github.com/ihciah/telearia2/releases/download/v0.1.4/telearia2-x86_64-unknown-linux-musl -O telearia2
install -m 755 telearia2 /usr/bin/telearia2

sed -i "s|HOST|${HOST}|g;s|PASSWORD|${PASSWORD}|g;s|TOKEN|${TOKEN}|g;s|ID|${ID}|" /workdir/config.toml
