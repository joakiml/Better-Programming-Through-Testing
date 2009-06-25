#!/usr/bin/env perl

use warnings;
use strict;

use Test::More; #"no_plan" or put a plan

use_ok("MyDate");

my %tests = (
    1989    => 0,
    1988    => 1,
    2000    => 1,
    1900    => 0,
);

for my $year (keys %tests) {
    my $is_leap_year = MyDate->is_leap_year($year);
    is (!!$is_leap_year, !!$tests{$year}, "is_leap_year($year)")
}

done_testing;