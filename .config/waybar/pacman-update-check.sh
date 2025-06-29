#!/bin/bash

updates=$(checkupdates | wc -l)

if [ "$updates" -gt 0 ]; then
    echo "{\"text\": \"${updates}  \", \"class\": \"updates-available\"}"
else
    echo "{\"text\": \"\", \"class\": \"no-updates\"}"
fi
