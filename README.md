# SVC – Service Handling

This framework is a simple tool to handle service starting and restarting.

The documentation is sparse due to it being in alpha stage.

## Installation

	make install

## Services
### Simplest case

	 touch /etc/svc.d/avail/somebin
   \$EDITOR /etc/svc.d/avail/somebin
	 svc -s somebin

Use `examples/avail/barebone` as a refence for writing service script.

### Usage

See the manpage for available documentation

Have fun!
