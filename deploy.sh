#!/bin/bash

#
# Determine deployment path
#
DEPLOY_PATH="`dirname \"$0\"`"
DEPLOY_PATH="`( cd \"$DEPLOY_PATH\" && pwd )`"
if [ -z "$DEPLOY_PATH" ] ; then
  exit 1
fi
echo "DEPLOYING TO ${DEPLOY_PATH}"

#
# Checkout Google API PHP Client
#
echo "Downloading Google API PHP Client v0.6.6..."
svn checkout http://google-api-php-client.googlecode.com/svn/tags/0.6.6/ ${DEPLOY_PATH}/lib/google-api-php-client

