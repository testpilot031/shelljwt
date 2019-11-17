# shelljwt
bash jwt_encode.sh header payload filepath_secret_key

You can get JWT. 

## example
header='{
  "alg": "RS256",
  "typ": "JWT",
  "kid": "0123456789abcdef01234567"
}'

payload='{
  "iss": "stackdriver-logging-read@project-name.iam.gserviceaccount.com",
  "iat": 1565869581.475549,
  "sub": "stackdriver-logging-read@project-name.iam.gserviceaccount.com",
  "exp": 1565873181.475549,
  "aud": "https://logging.googleapis.com/google.logging.v2.LoggingServiceV2"
}'
