package MyDate;

use strict;
use warnings;

=head3 is_leap_year

    my $is_leap_year = MyDate->is_leap_year($year);

Calculates if a $year is a leap year.

Returns true if it is, false if not.

=cut

sub is_leap_year {
    my $class = shift;
    my $year = shift;

    return 1 unless $year % 400;
    return 0 unless $year % 100;
    return 1 unless $year % 4;
    return 0;
}

1;