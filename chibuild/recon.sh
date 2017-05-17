#!/opt/exp/bin/bash
cmd_out=$(ps -ax |grep 6123:localhost:22 |grep -v grep 2>&1)
cmd_out2=$(ps -ax |grep 6124:localhost:22 |grep -v grep 2>&1)
ssh_cmd="/opt/exp/bin/ssh -N -f -R 6123:localhost:22 lsp2"
ssh_cmd2="/opt/exp/bin/ssh -N -f -R 6124:localhost:22 lsp3"

if [$cmd_out eq '']; then
exec $ssh_cmd
else
	echo "running ssh"
fi

if [$cmd_out2 eq '']; then
exec $ssh_cmd2
else
	echo "running ssh"
fi
