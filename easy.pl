my $str=`tail -n 10 README.md`;
#print $str,"\n";
chomp $str;
my $last=(split /(\r*\n){2}/sm,$str)[-1];
#print "1$last\n";
my $word=(split / /sm,$last)[0];

my $string=$word;
#print $string;
#=pod
`git add .`;
`git commit -m $string`;
`git push`;
