#started 1:05 PM Friday sept 16
#paused work at 1:23 PM
TARGET = "https://api.instrumental.ai/healthcheck"
# ping -c 1 $TARGET
# echo $?

# awk \{system("curl "$TARGET)}' /AbsPath/Input.txt' | jq

wget $TARGET | grep "Failed"
http://www.compciv.org/recipes/cli/jq-for-parsing-json/
