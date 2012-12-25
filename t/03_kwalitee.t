use strict;
use warnings;
use WWW::CPANTS::Test;
use WWW::CPANTS::Kwalitee;

save_metrics();

ok -f metrics_file(), "metrics file exists";

load_metrics();

ok is_valid_metric('extractable'), "extractable is valid";

my $kwalitee = {
  extractable => 1,
  extracts_nicely => 0,
};

{
  my $sorted = sorted_metrics($kwalitee);

  is $sorted->[0]{key} => 'extractable';
  is $sorted->[0]{value} => 1;
}

{
  my $sorted = sorted_metrics($kwalitee, requires_remedy => 1);

  is $sorted->[0]{key} => 'extractable';
  is $sorted->[0]{value} => 1;
  ok !$sorted->[0]{remedy}, "no remedy for a passing metric";

  is $sorted->[1]{key} => 'extracts_nicely';
  is $sorted->[1]{value} => 0;
  ok $sorted->[1]{remedy}, "remedy for a failing metric";
}

done_testing;