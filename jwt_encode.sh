#!/bin/bash
# encode method is only RS256 now ...
# bash jwt_encode.sh header payload filepath_secret_key
header=$1
payload=$2
secret_key=$3
base64UrlEncHeader=`echo -n ${header}|tr -d " \n"|openssl base64  |tr -- '+/=' '-_ '|tr -d " \n"`
base64UrlEncPayload=`echo -n ${payload}|tr -d " \n"|openssl base64  |tr -- '+/=' '-_ '|tr -d " \n"`
signature=`echo -n "${base64UrlEncHeader}.${base64UrlEncPayload}" | openssl dgst -sha256 -sign ${secret_key} -binary |openssl base64  |tr -- '+/=' '-_ '|tr -d " \n"`
echo "${base64UrlEncHeader}.${base64UrlEncPayload}.${signature}"
