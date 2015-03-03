#!/usr/bin/perl -w
use strict;
use warnings;
use Test::More tests => 8;

require_ok('robot');

can_ok('robot', ('new'));
my $ralph = robot::new('Ralph',2);
isa_ok($ralph, 'robot');

can_ok('robot', ('name'));
is  ($ralph->name, 'Ralph', 'Name test');

$ralph->move_arm('left', 'up');
my $pos = $ralph->arm_pos('left');
is($pos, 'up', 'Arm test');

is($ralph->age, 2, 'Age test');

my $new_age = 3;
$ralph->age($new_age);
is($ralph->age, $new_age, 'Age test 2');
