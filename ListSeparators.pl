$list = (Portia, Winston, Cecil, Duchess);
@array = ("Le Portia", "Le Winston", "Le Cecil", "Le Duchess");
print ($list);

print ("\n");

$, = " is teh bomb \n";
print (@array);

use diagnostics;
use warnings;

open (FILEHANDLE, "<c:\\work\\input.txt");
while (<FILEHANDLE>)
{
	@myArray = split(/,/);
	push (@{$myHash{$myArray[0]}}, @myArray);
}
close FILEHANDLE;

$num = 0;
$index = 0;
@array = ();
print "\nenter some numbers:\n";
while ()
{
	chomp ($num = <STDIN>);
	if ($num eq '')
	{
		last;
	}
	
	if ($num =~ /\D/)
	{
		print "Only numbers\n";
		next;
	}

	$array[$index++] = $num;

}
$, = ' ';
print(@array);



	
