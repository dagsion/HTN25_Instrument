#!/proc/boot/sh

cd /home/qnxuser/htn &&
echo '======================================' >> server.log
echo Server started at $(date +"%Y-%m-%dT%H:%M:%SZ") >> server.log
echo '======================================' >> server.log
nohup /system/bin/python server.py >> server.log 2>&1 &
echo Started Hack The North server
