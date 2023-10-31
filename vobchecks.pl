#!/usr/bin/perl

# Exemplify how to populate list variables from an input file with dummy vob data
# and how to pass arguments to the program in order to select what dummy check/
# operation to run on the list variables

my @vobs;
sub list;
sub list_nl;

if ($ARGV[1] eq "nl")
{
    open(SESAME_NL, "voblist_nl.txt");
    
    # while(<SESAME_NL>) {@vobs = chomp $_);}
    # while(<SESAME_NL>) {@vobs = split /\n/, $_);}

    while (my $line = <SESAME_NL>) {
        # @vobs = chomp $line;
        print chomp $line;
    }
}
else 
{
    open(SESAME, "voblist.txt");
    while(<SESAME>) {@vobs = split(" ", $_);}
}

if ($ARGV[0] eq "list") {list;}

# List some vob tags
sub list {
    print "$_\n" for @vobs;
    print "1: $vobs[1]\n";
}
