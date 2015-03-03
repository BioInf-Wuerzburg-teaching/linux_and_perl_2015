#!/usr/bin/perl -w

use strict;
use warnings;
use Data::Dumper;

my %hash = (1 => 2);
my $fail = $hash{3};
print Dumper(\%hash), "fail: $fail\n";
