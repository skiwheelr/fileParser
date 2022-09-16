# started 1:05 PM Friday sept 16
# paused work at 1:23 PM
# resumed work at 2:58 PM
# completed at 3:08 PM

TARGET="https://api.instrumental.ai/healthcheck"
ping -c 1 ${TARGET} > /dev/null && echo "HOST FOUND" || echo "HOST NOT FOUND"

ELASTIC=$(curl -s ${TARGET} | jq '.elasticReachable')
DB=$(curl -s ${TARGET} | jq '.databaseReachable')
echo "Elastic service is available: "$ELASTIC
echo "Database is available: "$DB


# ping -c 1 $TARGET; echo $?
# awk \{system("curl "$TARGET)}' /AbsPath/Input.txt' | jq