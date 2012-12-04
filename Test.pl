use diagnostics;
use warnings;

# foreach variable (array) 
#{
#	block;
#}

# foreach returns each value in an array of an associative array (hash) in turn,
# if you specify the vairable, it will be returned to that var, also
# by default it ti returned to $_



foreach $pal('Cecil', 'Portia', 'Winston', 'The Duchess')
{
	print "$pal is your pal\n";
}

open(FILEHANDLE, "<c:\\work\\input.txt");

while (<FILEHANDLE>)
{
	@myArray = split(/,/);
	chomp @myArray;
	push (@{$myHash{$myArray[0]}}, @myArray);
	#print "@{$myHash{$myArray[0]}}\n";
}

print "\n";

foreach $pal(@myArray)
{
#	print "$pal is your pal\n";
}
print "\n";

#print "{$myHash{MissPortiaPoo[1]}}\n";

print "\n";

foreach $myKeys (keys %myHash)
{
	foreach (@{$myHash{$myKeys}})
	{
		print "$_ \n";
	}
	print "\n";
}


#foreach (keys %myHash)
#{
#	foreach (@{$myHash{$_}})
#	{
#		print "$_ \n";
#	}
#	print "\n";
#}