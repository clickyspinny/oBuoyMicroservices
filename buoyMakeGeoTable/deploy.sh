#!/bin/sh
start_time=`date +%s`
zip -r buoyMakeGeoTable.zip ./ -x '*.zip*' -x '*.DS_Store*' -x "node_modules/aws-sdk/*" -9 -u
aws s3 cp buoyMakeGeoTable.zip s3://buoy-tracker-deploy/buoyMakeGeoTable.zip
afplay ~/Downloads/Archer\ Bwip.mp3; date 
end_time=`date +%s`
echo `expr $end_time - $start_time` s.