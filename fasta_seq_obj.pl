#!/usr/bin/perl

use strict;
use warnings;
use fasta_seq;
use Data::Dumper;


my $fasta_obj=fasta_seq->new(ID=>"Steward", seq=>"wqewertrztzuziuuoiiopoagsfdfadf");
print $fasta_obj,"\n";
print Dumper($fasta_obj);

my $fasta_obj2=fasta_seq->new(ID=>"BobtheBuilder", seq=>"lknasdlflfkkanssfgg", species=>"Cat");
print $fasta_obj2, "\n";
print $fasta_obj.$fasta_obj2,"\n";
print "$fasta_obj","\n";
print $fasta_obj2->as_fasta,"\n";
