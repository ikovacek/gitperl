#!/usr/bin/perl

use Person;
use strict;
use 5.010;

my $person = Person->new("name" , "Pero");
$person->print;
$person->name("Moje ime!");
$person->print;

my $kid = Kid->new(name=>"Perin sin!");
$kid->parent($person);

$kid->print;
say "-"x40;
$kid->kidprint;

say "we re just testing git now!";
