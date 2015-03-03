package robot;

use strict;
use warnings;

=pod

=encoding utf8

=head1 Meine Roboter

Meine Klasse um Roboter zu verarbeiten

use robot;

robot::$counter gives number of working robots

=cut

# Klassenvariable, um Roboter zu zählen
my $counter = 0;

=head1 Functions

=head2 new

=over

=item Funktion: Constructor

=item Example my $ralph = robot->new($name,$age);

=item Parameter: 
  Name: String
    Alter: Integer

=item Rückgabe: Robot Objekt

=back

=cut
 
sub new
{
    my $class = $_[0];
    my $self = { name => $_[1],
		 carries => '',
		 left_arm => '',
		 right_arm => '',
		 age => $_[2]
    };
    $counter++; #zähle Klassenvariable hoch.
    bless $self, $class; 
    return $self;
}

=head2 carries

=cut

sub carries
{
    my $self = $_[0];
    my $thing = $_[1];
    $self->{carries} = $thing;
}

sub age
{
    my $self = $_[0];
    $self->{age} = $_[1] if defined $_[1];
    return $self->{age};
}

sub name
{
    my $self = $_[0];
    return $self->{name};
}

sub move_arm
{
    my $self = $_[0];
    $self->{left_arm} = $_[2] if $_[1] eq 'left';
    $self->{right_arm} = $_[2] if $_[1] eq 'right';
}

sub arm_pos
{
    my $self = $_[0];
    return $self->{left_arm} if $_[1] eq 'left';
    return $self->{right_arm} if $_[1] eq 'right';
}

1;
