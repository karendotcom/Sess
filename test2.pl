

use diagnostics;
use warnings;

open(FILEHANDLE, "<c:\\work\\input.txt");
while (<FILEHANDLE>)
{
	@myArray = split(/,/);
	chomp @myArray;
	push (@{$myHash{$myArray[0]}}, @myArray);
}

# keys
foreach $myValue (keys %myHash)
{
	foreach (@{$myHash{$myValue}})
	{
		print "$_\n";
	}
	print "\n";
}

%petHash = (
							'jrt1' => 'McCecil',
							'jrt2' => 'Portia',
							'weiner1' => 'Duchess',
							'jrt3' => 'Winsty',
						);
	
# values	gives hash values (unsorted of course)					
foreach $value (values(%petHash))
{
	print " this is the valuse $value\n";
}						
print "\n";

# each gives hash key value pairs (unsorted of course)
while (($key, $value) = each(%petHash))
{
	print "key is $key, value is $value\n";
}

