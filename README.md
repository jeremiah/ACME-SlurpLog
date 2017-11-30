# ACME-SlurpLog

ACME-SlurpLog is a tool to read Apache2 log files. Since the Apache 2
log file can take a number of formats
[http://httpd.apache.org/docs/current/mod/mod_log_config.html] this
log works on capturing the whole line regardless of format.

# Usage

ACME-Slurplog is written as a perl module and can be used in the usual
way. After installation, bring in ACME-Slurplog into your perl script
this way;

```perl
  use ACME::SlurpLog;

  my $log_array_ref = ACME::SlurpLog->new();
```

# Installation

To install this module, run the following commands:

	perl Makefile.PL
	make
	make test
	make install

# Support and documentation

After installing, you can find documentation for this module with the
perldoc command.

    perldoc ACME::SlurpLog

You can also look for information at:

    RT, CPAN's request tracker (report bugs here)
        http://rt.cpan.org/NoAuth/Bugs.html?Dist=ACME-SlurpLog

    AnnoCPAN, Annotated CPAN documentation
        http://annocpan.org/dist/ACME-SlurpLog

    CPAN Ratings
        http://cpanratings.perl.org/d/ACME-SlurpLog

    Search CPAN
        http://search.cpan.org/dist/ACME-SlurpLog/


# License and copyright

Copyright (C) 2012 Jeremiah C. Foster

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3 as
published by the Free Software Foundation.

