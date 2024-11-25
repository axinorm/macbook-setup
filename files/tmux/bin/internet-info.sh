#!/bin/bash

IP=$(ipconfig getifaddr en0)
PUB_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

INTERNET=''

echo -n " $INTERNET #[fg=colour197]$IP | $PUB_IP"
