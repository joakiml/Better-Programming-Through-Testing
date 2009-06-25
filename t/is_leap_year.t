#!/usr/bin/env perl

use warnings;
use strict;

use Test::More; #"no_plan" or put a plan

use_ok("MyDate");

ok(!MyDate->is_leap_year(1989), "1989 is not a leap year");

ok(MyDate->is_leap_year(1988), "1988 is a leap year");

done_testing;