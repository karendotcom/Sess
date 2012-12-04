open (my $fHandle, "<", "c:\\work\\input.txt");
my @inputArray = <$fHandle>;
close $fHandle;
my %hash;

for (@inputArray)
{
	chomp;
	my @tempArray = split(",");
	push (@{$hash{$tempArray[0]}}, @tempArray);
	
}

foreach (keys %hash)
{
	for (@{$hash{$_}})
	{
		print "$_\n";
	}
	print "\n";
}

my @pets = qw(Cecil cedrick Winsty win Portia poo);
@pets = sort {lc($a) cmp lc($b)} @pets;
printArray(\@pets);

my @numbers = (34, 4, 6,7,23,55,67,88);
@numbers = sort {$a <=> $b} @numbers;
printArray(\@numbers);

splice(@pets, -1,1);
printArray(\@pets);

splice(@pets,2,0, "Enobarbus", "Ralph");
printArray(\@pets);



sub printArray
{
	my @array = @{$_[0]};
	for (@array)
	{
		print "$_\n";
	}
	print "\n";
}