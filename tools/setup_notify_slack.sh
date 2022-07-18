#!/bin/bash

mkdir tmp && pushd tmp
wget https://github.com/catatsuy/notify_slack/releases/download/v0.4.13/notify_slack-linux-amd64.tar.gz
tar zxvf notify_slack-linux-amd64.tar.gz
sudo mv notify_slack /usr/local/bin/
popd
notify_slack -version


# /etc/notify_slack.toml
# [slack]
# url = "https://hooks.slack.com/services/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"
# token = ""
# channel = ""
