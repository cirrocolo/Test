open(SESAME, "data_file.txt");

my @a;
my $i = 0;

while(<SESAME>) {

    # @F = split("\\n", $_);

    # print "$F[0]";
    # print $_;
    
    $a[i] = $_;
    $i = $i + 1;
}

print "$a[0]";

close(SESAME);