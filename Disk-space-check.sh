#!/bin/bash
data=$(df -h |grep -E -e "[89]{1,1}[0-9]{1,1}%")
df -h |grep -q -E -e "[89]{1,1}[0-9]{1,1}%" && exit_code=1
echo "$exit_code"
echo ""
if [ "$exit_code" == 0 ]; then
        echo "Disk Space Fault $data "
        #echo ""
fi
exit $exit_code
