use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'ACME::SlurpLog',
    AUTHOR              => q{Jeremiah C. Foster <jeremiah.foster@pelagicore.com>},
    VERSION_FROM        => 'lib/ACME/SlurpLog.pm',
    ABSTRACT_FROM       => 'lib/ACME/SlurpLog.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'ACME-SlurpLog-*' },
);
