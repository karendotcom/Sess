use diagnostics;
use warnings;

open (my $fHandle, "<", "c:\\work\\input.txt");
my @inputArray = <$fHandle>;
close ($fHandle);
my %hash;

for (@inputArray)
{
	chop;
	my @input = split(/,/);
	push (@{$hash{$input[0]}}, @input);
}

foreach (keys %hash)
{
	for (@{$hash{$_}})
	{
		print "$_\n";
	}
	print "\n";
	
}


my @ticLine = qw(0 0 0);
my @ticLine2 = qw(0 0 0);
my @ticLine3 = qw(0 0 0);

my @ticTackToeBoard = (\@ticLine, \@ticLine2, \@ticLine3);

my @hAccumulator = qw(0 0 0);
my @vAccumulator = qw(0 0 0);
my @dAccumulator = qw(0 0 0);


print "this is tic tac toe\n\n";
printBoard();
playGame();

my $sum = 0;
while (abs($sum) != 9) 
{
	playGame();
}

sub playGame
{
	my $marker = chooseMarker();
	my $hPos = chooseSpot("Horizontal");
	my $vPos = chooseSpot("Vertical");
	$ticTackToeBoard[$hPos][$vPos] = $marker;
	$hAccumulator[$hPos] = $marker;
	$vAccumulator[$vPos] = $marker;
	printBoard();	
	checkScore();

}


sub checkScore
{
		$sum = 0;
		$sum += $_ for @hAccumulator;
		if ($sum == -9)
		{
			print "X won on horizontal \n";
		}
		if ($sum == 9)
		{
			print "X won on horizonal \n";
		}		
		$sum += $_ for @vAccumulator;
		if ($sum == -9)
		{
			print "X won on vertical \n";
		}
		if ($sum == 9)
		{
			print "X won on vertical \n";
		}	
		return $sum;
	
}


sub chooseMarker
{
	print "type X or O\n";
	my $move = lc<STDIN>;
	chomp ($move);
	#print "Move is $move";
	my $marker = 0;
	
	if ($move eq "x")
	{
		$marker = -3;
		print "Marker is X -3 \n";
	}
	elsif($move eq "o")
	{
		$marker = 3;
		print "Marker is O 3 \n";		
	}
	return $marker;
}

sub chooseSpot
{
	my $horzOrVert = shift;
	print "Please choose $horzOrVert position:\n";
	chomp (my $choice = <STDIN>);
	#chomp ($choice);
	return $choice;	
}

sub printBoard
{
	# my @board = $_argv[0];
	print "\n _ _ _ _ _ _ _\n";
	for ($row = 0; $row < 3; $row++)
	{
		print " | ";
		for ($col = 0; $col < 3; $col++)
		{
			#print "$ticTackToeBoard[$row][$col] | ";
			my $value = $ticTackToeBoard[$row][$col];
			#print "Value is $value\n";
			if ( $value == 0)
			{
				$value = " ";
			}
			elsif ( $value == -3)
			{
				$value = "X";
			}
			elsif ( $value == 3)
			{
				$value = "0";
			}			
			print "$value | ";
			
		}
		print "\n _ _ _ _ _ _ _\n";
	}
	
}

