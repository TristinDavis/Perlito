# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
use Perlito5::Perl5::Prelude;
our $MATCH = Perlito5::Match->new();
{
package main;
    sub new { shift; bless { @_ }, "main" }
    package Perlito5::Test;
    (my  $num_of_tests_run);
    (my  $num_of_tests_failed);
    (my  $num_of_tests_badpass);
    (my  $num_of_tests_planned);
    (my  $testing_started);
    sub plan {
        my $List__ = bless \@_, "ARRAY";
        ((my  $number_of_tests) = shift());
        ($testing_started = 1);
        ($num_of_tests_planned = $number_of_tests);
        Main::say(('1..' . $number_of_tests))
    };
    sub ok {
        my $List__ = bless \@_, "ARRAY";
        ((my  $cond) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        Perlito5::Test::proclaim($cond, ('ok' . chr(33) . ' ' . $desc), $todo, $depends)
    };
    sub is {
        my $List__ = bless \@_, "ARRAY";
        ((my  $got) = shift());
        ((my  $expected) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        ((my  $test) = ($got eq $expected));
        Perlito5::Test::proclaim($test, ('is' . chr(33) . ' ' . $desc), $todo, $got, $expected, $depends)
    };
    sub is_deeply {
        my $List__ = bless \@_, "ARRAY";
        ((my  $got) = shift());
        ((my  $expected) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        ((my  $got_perl) = $got);
        ((my  $expected_perl) = $expected);
        ((my  $test) = (($got_perl eq $expected_perl)));
        Perlito5::Test::proclaim($test, ('is deeply' . chr(33) . ' ' . $desc), $todo, $got_perl, $expected_perl, $depends)
    };
    sub isnt {
        my $List__ = bless \@_, "ARRAY";
        ((my  $got) = shift());
        ((my  $expected) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        ((my  $test) = !((($got eq $expected))));
        Perlito5::Test::proclaim($test, ('isnt' . chr(33) . ' ' . $desc), $todo, $got, $expected, $depends, (do {
    (my  $Hash_a = bless {}, 'HASH');
    ($Hash_a->{'negate'} = 1);
    $Hash_a
}))
    };
    sub cmp_ok {
        my $List__ = bless \@_, "ARRAY";
        ((my  $got) = shift());
        ((my  $compare_func) = shift());
        ((my  $expected) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::cmp_ok not implemented'))
    };
    sub like {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::like not implemented'))
    };
    sub unlike {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::unlike not implemented'))
    };
    sub eval_dies_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::eval_dies_ok not implemented'))
    };
    sub isa_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::isa_ok not implemented'))
    };
    sub use_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::use_ok not implemented'))
    };
    sub throws_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::throws_ok not implemented'))
    };
    sub dies_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::dies_ok not implemented'))
    };
    sub lives_ok {
        my $List__ = bless \@_, "ARRAY";
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::lives_ok not implemented'))
    };
    sub skip {
        my $List__ = bless \@_, "ARRAY";
        ((my  $reason) = shift());
        ((my  $depends) = shift());
        Perlito5::Test::proclaim(1, '', ('skip ' . $reason), $depends)
    };
    sub pass {
        my $List__ = bless \@_, "ARRAY";
        ((my  $desc) = shift());
        Perlito5::Test::proclaim(1, ('pass' . chr(33) . ' ' . $desc))
    };
    sub flunk {
        my $List__ = bless \@_, "ARRAY";
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $depends) = shift());
        Perlito5::Test::proclaim(0, ('flunk' . chr(33) . ' ' . $desc), $todo, $depends)
    };
    sub proclaim {
        my $List__ = bless \@_, "ARRAY";
        ((my  $cond) = shift());
        ((my  $desc) = shift());
        ((my  $todo) = shift());
        ((my  $got) = shift());
        ((my  $expected) = shift());
        ((my  $depends) = shift());
        ((my  $negate) = shift());
        ($testing_started = 1);
        ($num_of_tests_run = ($num_of_tests_run + 1));
        if (($cond)) {
            Main::say(('ok '), $num_of_tests_run)
        }
        else {
            Main::say(('not ok '), $num_of_tests_run);
            Perlito5::Test::report_failure($todo, $got, $expected, $negate)
        };
        return ($cond)
    };
    sub report_failure {
        my $List__ = bless \@_, "ARRAY";
        ((my  $todo) = shift());
        ((my  $got) = shift());
        ((my  $expected) = shift());
        ((my  $negate) = shift());
        Main::say((chr(35) . chr(35) . chr(35) . ' Perlito5::Test::report_failure not implemented'))
    };
    sub test_ends {
        my $List__ = bless \@_, "ARRAY";
        if ((!($testing_started))) {
            return ()
        };
        if ((!($num_of_tests_planned))) {
            Main::say(('1..' . $num_of_tests_run))
        };
        if ((($num_of_tests_planned != $num_of_tests_run))) {
            Main::say((chr(35) . ' Looks like you planned ' . $num_of_tests_planned . (' tests, but ran ') . $num_of_tests_run))
        };
        if (($num_of_tests_failed)) {
            Main::say((chr(35) . ' Looks like you failed ' . $num_of_tests_failed . (' tests of ') . $num_of_tests_run))
        };
        ($num_of_tests_run = 0);
        ($num_of_tests_failed = 0);
        ($num_of_tests_planned = 0);
        ($testing_started = 0)
    }
}

1;
