package ACME::SlurpLog;

use Moose;
use Perl6::Slurp;

=head1 NAME

ACME::SlurpLog - Parse apache2 log files, spit out something useful

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

    use ACME::SlurpLog;

    my $log_array = ACME::SlurpLog->new();

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 read_log_file

Read in a file, create an array of lines, and then an array of items
in the line. Return a reference to an array

=cut

has handle => ( is  => 'ro', isa => 'Str', required => 1, default => "/var/log/apache2/access.log" );

sub read_log_file {
  my $self = shift;
  my @array_lines;
  # split on white space
  map {
    push @array_lines, [ split / / ];
  } slurp $self->handle, {irs => qr/\n/xms};
  return \@array_lines;
}

=head1 AUTHOR

Jeremiah C. Foster, C<< <jeremiah@jeremiahfoster.com> >>

=head1 BUGS



=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc ACME::SlurpLog


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=ACME-SlurpLog>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/ACME-SlurpLog>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/ACME-SlurpLog>

=item * Search CPAN

L<http://search.cpan.org/dist/ACME-SlurpLog/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Jeremiah C. Foster.
Copyright 2012 Pelagicore AB.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut




1; # End of ACME::SlurpLog
