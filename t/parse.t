#!perl -T

use 5.006;
use strict;
use warnings;
use Test::More tests => 2;
use ACME::SlurpLog;

my $log_array_ref = ACME::SlurpLog->new();

isa_ok($log_array_ref, "ACME::SlurpLog");

can_ok($log_array_ref, "read_log_file");
