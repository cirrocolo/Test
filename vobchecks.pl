#!/usr/bin/perl

# Exemplify how to populate list variables from an input file with dummy vob data
# and how to pass arguments to the program in order to select what dummy check/
# operation to run on the list variables

open(SESAME, "voblist.txt");

while(<SESAME>) {
    @vobs = split(" ", $_);
    # @vobs = split("\n", $_);
}

sub list;

if ($ARGV[0] eq "list") {list;}

sub list {
    # List the vob tags
    print "Hello from sub list!\n";
    # while(@vobs) {
    #    print $_;
    print "$_\n" for @vobs;
    print "1: $vobs[1]\n";
    # print @vobs;
    # print "$_" for @vobs;
    
    # print @vobs;
}