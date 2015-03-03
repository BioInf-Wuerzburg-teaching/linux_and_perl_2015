package robot::evil;

use parent('robot');

use strict;
use warnings;

sub new
{
  my $class = shift;
  my $self = $class->SUPER::new(@_);
  $self->got_evil;
  return $self;
}

sub is_evil
{
    my $self = shift;
    return $self->{evil};
}

sub got_evil
{
    my $self = shift;
#    print "I am Evil!!\n";
    $self->{evil} = 1;
}

sub gone_good
{
    my $self = shift;
    $self->{evil} = 0;
}

1;
