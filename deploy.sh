#!/bin/sh

rsync --archive --verbose --compress --perms --human-readable \
    --recursive --update --exclude-from=deploy-excludes.txt \
    ./ "etan@ciffreo.uberspace.de:html"
