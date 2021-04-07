#!/bin/bash

exit_code=0
pihole status|grep -q -e 'Pi-hole blocking is enabled' || exit_code=1
if [ "$exit_code" == 1 ]; then
        echo "PI Hole Status Fault. $exit_code"
        echo ""

exit $exit_code
fi


exit_code=0
host yahoo.com 127.0.0.1 -W 3 -4 |grep -q 'yahoo.com has address' || exit_code=1
if [ "$exit_code" == 1 ]; then
        echo "PI Hole DNS Lookup Fault. $exit_code"
        echo ""
exit $exit_code
fi

# final
