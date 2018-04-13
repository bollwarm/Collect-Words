
my $str=`tail -n 10 README.md`;
#print $str,"/n";
chomp $str;
my $last=(split /\r\n\r\n/sm,$str)[-1];
#print $last;
my $word=(split / /sm,$last)[0];

my $string=$word;
`git add .`;
`git commit -m $string`;
`git push`;