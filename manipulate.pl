# Manipulate data.txt

# Delete the last three columns, ie. delete everything after "IGNORE"
# Search "IGNORE" and replace w. "DOMAIN\<user>", unless "Account Unknown" then
# replace with "DELETE"

open(SESAME, "data.txt");
$domain = 'DOMAIN';

while(<SESAME>) {
    @F = split(",", $_);

    if("$F[0]" eq "Account Unknown") {
        s/IGNORE,.*/DELETE/g;
    }
    else {
        s/IGNORE,.*/$domain\\$F[0]/g;
        s/\\stnis\//\\/g;
    }

    print $_;
}

close(SESAME);