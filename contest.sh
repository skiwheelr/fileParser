# started 1:05 PM Friday sept 16
# paused work at 1:23 PM
# resumed work at 2:58 PM
# completed at 3:08 PM

TARGET="api.instrumental.ai"
TARGET2="https://api.instrumental.ai/healthcheck"
ping -c 1 ${TARGET} > /dev/null && echo "HOST FOUND" || echo "HOST NOT FOUND"

ELASTIC=$(curl -s ${TARGET2} | jq '.elasticReachable')
if [ "$ELASTIC" = "true" ]
then
    echo '\033[0;32m'  "Elastic service is available: "$ELASTIC
else
    echo '\033[0;31m' "Elastic service is available: "$ELASTIC
fi

DB=$(curl -s ${TARGET2} | jq '.databaseReachable')

if [ "$DB" = "true" ]
then
     echo '\033[0;32m' "Database is available: "$DB
else
    echo "Endpoint not found"
fi

# ping -c 1 $TARGET; echo $?
# awk \{system("curl "$TARGET)}' /AbsPath/Input.txt' | jq