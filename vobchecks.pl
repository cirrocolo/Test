#!/usr/bin/perl

# Exemplify how to populate list variables from an input file with dummy vob data
# and how to pass arguments to the program in order to select what dummy check/
# operation to run on the list variables

my @vobs;
sub list;

open(SESAME, "voblist.txt");
while(<SESAME>) {@vobs = split(" ", $_);}

if ($ARGV[0] eq "list") {list;}

# List some vob tags
sub list {
    print "$_\n" for @vobs;
    print "1: $vobs[1]\n";
}