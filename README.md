# SVC – Service Handling

This framework is a simple tool to handle service starting and restarting.

The documentation is sparse due to it being in alpha stage.

## Installation

	% make install

## Services
### Simplest case

	% touch /etc/svc.d/avail/somebin
	% svc -s somebin

This will run »somebin« in the $PATH using the script in /etc/svc.d/bare.sh.

### Some params

	% touch /etc/svc.d/avail/somebin
	% echo 'PARAMS="-a"' > /etc/svc.d/default/somebin
	% svc -s somebin

This will run »somebin -a« in the $PATH using the script /etc/svc.d/bare.sh.

### Own script

	% cp /etc/svc.d/bare.sh /etc/svc.d/default/somebin
	% $EDITOR /etc/svc.d/default/somebin
	% echo 'SOME_VAR="no"' > /etc/svc.d/default/somebin
	% svc -s somebin

This will run »somebin« with the script at /etc/svc.d/default/somebin using the
special variable from /etc/svc.d/default/somebin.

Use `examples/avail/barebone` as a refence for writing service script.
Its also possible to just use `exec $BIN $FLAGS` in a oneliner script too, but
`svc` would not know how to kill the program, if you were to try to
kill it.

### Usage

See the manpage for available documentation

Have fun!
