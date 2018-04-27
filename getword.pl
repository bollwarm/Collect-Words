
open my $FD,'<',"README.md" or die"Couldn't open files:$!";
while(<$FD>) {
die "Some format Error!\n" if (/\?/) ;
}
my $str,$last;
{
local $/;
$str=<$FD>;
}
my @world=split /\n\n/sm,$str;

my $num=int(rand($#world));
print $world[$num],"\n";

