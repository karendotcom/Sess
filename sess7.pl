# whatever
use warnings;
use diagnostics;

open (my $fileHandle, "<", "c:/work/input.txt");
my @inputArray = <$fileHandle>;
close $fileHandle;

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

for (@{$hash{"Cecil McCecil"}})
{
	print "$_\n";
}

my @numbers = (43, 56, 789, 76, 12, 1, 12, 14, 15, 23);
print @numbers;

for (@numbers)
{
	print "$_\n";
}

@numbers = sort {$a <=> $b} @numbers;
for (@numbers)
{
	print "$_\n";
}

print "\n";
my $lW = "Little One";
my @animals = qw(Cecil enobarbus Portia portitia Winston woo Little_One);

@animals = sort {lc($a) cmp lc($b)} @animals;
printArray(\@animals);

splice (@animals, 3, 5);
printArray(\@animals);

splice (@animals, 2, 0,  "Englebert", "Humperdink", "whale");
printArray(\@animals);
@animals = sort {lc($a) cmp lc($b)} @animals;
printArray (\@animals);

sub printArray
{
	my @array = @{$_[0]};
	for (@array)
	{
		print "$_\n";
	}
	print "\n";
}


