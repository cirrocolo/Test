my ($srcpath);
my $srcdir="C:\\Users\\cirro\\OneDrive\\Kod\\tarpit";

foreach $srcpath (<$srcdir\\bitbucket-*.tar>) {
    next unless ($srcpath);
    next unless (-r $srcpath);
    print "srcpath: $srcpath\n";
}