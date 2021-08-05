#!/bin/sh
echo "======================================"
echo "     Cloudflare Threat Score Test"
echo "         < https://cf.qn.md >"
echo "        No tracker version of "
echo "    https://lab.skk.moe/cf-threat/"
echo "======================================"

http_code=200
x=71
i=1

echo "Testing. It may take about 30 seconds..."

while [ "$http_code" = "200" ]; do
    x=$[x-i]
    http_code=$(curl -o /dev/null -s -m 10 -w %{http_code} "https://cf.qn.md/t.txt?t=$x")
done

echo "======================================"
echo "Your threat score is "$x
echo "======================================"
