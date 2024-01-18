#!/bin/sh

exec 2>&1

sed -i "s|HOST|${HOST}|g;s|PASSWORD|${PASSWORD}|g;s|TOKEN|${TOKEN}|g;s|ID|${ID}|" config.toml