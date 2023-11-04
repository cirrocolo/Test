open(FILE, "groups.txt");

while(<FILE>) {
    @F = split(" ", $_);
    if("$F[0]" eq "nisse") {print "abel snabel\n";}

    # Ovan ska vara en del av stubben och ge output som ska tolkas här.
    # Läs om hur man gör funktioner i Perl.
    # ...
}

close(FILE);