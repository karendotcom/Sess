use diagnostics;
use warnings;

open (FILEHANDLE, "<c:\\work\\input.txt");

while (<FILEHANDLE>)
{
	@myArray = split(/,/);
	chomp @myArray;
	push (@{$myHash{$myArray[0]}}, @myArray);
}

foreach $value (keys %myHash)
{
	foreach (@{$myHash{$value}})
	{
		print "$_\n";
	}
	print "\n";
}

#each uses a while  returns values from a hash 
while (($key,$value) = each (%myHash))
{
	print "mykey is $key, myValue is @{$value}[1]\n";
}


#values uses a foreach  returns the key and value 
foreach $values (values (%myHash))
{
	print "these are the valuse @{$values}[0]\n";
}

