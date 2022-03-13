# SVC – Service Handling

This framework is a simple tool to handle service starting and restarting.

The documentation is sparse due to it being in alpha stage.

## Installation

	% chmod 755 /bin/svc
	% cp -rf svc.d /bin/svc.d

## Services
### Simplest case

	% touch /bin/svc.d/avail/somebin
	% svc -s somebin

This will run »somebin« in the $PATH using the script in /bin/svc.d/bare.sh.

### Some params

	% touch /bin/svc.d/avail/somebin
	% echo 'PARAMS="-a"' > /bin/svc.d/default/somebin
	% svc -s somebin

This will run »somebin -a« in the $PATH using the script /bin/svc.d/bare.sh.

### Own script

	% cp /bin/svc.d/bare.sh /bin/svc.d/default/somebin
	% $EDITOR /bin/svc.d/default/somebin
	% echo 'SOME_VAR="no"' > /bin/svc.d/default/somebin
	% svc -s somebin

This will run »somebin« with the script at /bin/svc.d/default/somebin using the
special variable from /bin/svc.d/default/somebin.

## svc(1)

	% svc -a	# list all links in /bin/svc.d/run (all activated services)
	% svc -a ser	# activate service »ser« to be run on startup
	% svc -c	# create the basic directories of svc (configure)
	% svc -d ser	# deactivate service »ser«
	% svc -k	# kill all services linked to /bin/svc.d/run
	% svc -k ser	# kill the service »ser«
	% svc -s	# run all services linked to /bin/svc.d/run
	% svc -s ser	# run service »ser«
	% svc -l	# list all services in /bin/svc.d/avail
	% svc -r ser	# restart service »ser«

Have fun!

