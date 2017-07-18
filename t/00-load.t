#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'ACME::SlurpLog' ) || print "Bail out!\n";
}

diag( "Testing ACME::SlurpLog $ACME::SlurpLog::VERSION, Perl $], $^X" );
