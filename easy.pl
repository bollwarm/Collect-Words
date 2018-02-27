my $string=shift;

`git add .`;
`git commit -m $string`;
`git push`;