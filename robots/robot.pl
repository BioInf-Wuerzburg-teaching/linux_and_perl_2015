#!/usr/bin/perl

use strict;
use warnings;
use robot;
use robot::evil;

my $ralph = robot::evil->new('Ralph',2);
#$ralph->got_evil;
$ralph->carries('Banana');
my $norbert = robot->new('Norbert',1);

foreach my $minion ($ralph, $norbert)
{
    my $old = $minion->age();
    my $name = $minion->name();
    print "$name is $old years old\n";
    print "I am: ", ref $minion, "\n";
    print "$name ". $minion->is_evil. "\n" if (ref $minion eq 'robot::evil');
}

print 'Hallo';
