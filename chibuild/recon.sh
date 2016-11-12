#!/opt/exp/bin/bash
cmd_out=$(ps -ax |grep 6123:localhost:22 |grep -v grep 2>&1)
ssh_cmd="ssh -N -f -R 6123:localhost:22 google"
if [$cmd_out eq '']; then
exec $ssh_cmd
else
	echo "running ssh"
fi
