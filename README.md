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

## svc(1)

	% svc -a	# list all links in /etc/svc.d/run (all activated services)
	% svc -a ser	# activate service »ser« to be run on startup
	% svc -c	# create the basic directories of svc (configure)
	% svc -d ser	# deactivate service »ser«
	% svc -k	# kill all services linked to /etc/svc.d/run
	% svc -k ser	# kill the service »ser«
	% svc -s	# run all services linked to /etc/svc.d/run
	% svc -s ser	# run service »ser«
	% svc -l	# list all services in /etc/svc.d/avail
	% svc -r ser	# restart service »ser«

Have fun!

