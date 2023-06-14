#!/bin/bash

# Backup www data to external HD
#
# It uses rsync and ignore many paths to avoid
# backuping unnecessary files and folders.

# TODO: Get paths by parameters
SRC=/home/thiago/www
DEST=/media

backup() {
  rsync -av --progress \
    --exclude=/.next \
    --exclude=/node_modules \
    --exclude=/vendor \
    ${SRC} \
    ${DEST}
}