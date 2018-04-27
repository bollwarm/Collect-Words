my $str=`tail -n 10 README.md`;
#print $str,"\n";
chomp $str;
my $last=(split /\n\n/sm,$str)[-1];
#print "$last\n";
my $word=(split / /sm,$last)[0];

my $string=$word;

`git add .`;
`git commit -m $string`;
`git push`;
