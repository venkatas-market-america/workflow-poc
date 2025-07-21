#!/bin/bash
echo "{\"commit_message\": \"$(git log -1 --pretty=%B)\", \"author_email\": \"$(git log -1 --pretty=%ae)\"}"
