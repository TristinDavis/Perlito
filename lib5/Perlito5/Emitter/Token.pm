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
    use v5;
    {
    package Rul;
        sub new { shift; bless { @_ }, "Rul" }
        sub constant {
            my $List__ = bless \@_, "ARRAY";
            ((my  $str) = shift());
            ((my  $len) = length($str));
            if ((($str eq chr(92)))) {
                ($str = chr(92) . chr(92))
            };
            if ((($str eq chr(39)))) {
                ($str = chr(92) . chr(39))
            };
            if (($len)) {
                ('( ' . chr(39) . $str . chr(39) . ' eq substr( ' . chr(36) . 'str, ' . chr(36) . 'MATCH->to, ' . $len . ') ' . chr(38) . chr(38) . ' ( ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . $len . ' + ' . chr(36) . 'MATCH->to )' . ')')
            }
            else {
                return ('1')
            }
        }
    }

;
    {
    package Rul::Quantifier;
        sub new { shift; bless { @_ }, "Rul::Quantifier" }
        sub term { $_[0]->{term} };
        sub quant { $_[0]->{quant} };
        sub greedy { $_[0]->{greedy} };
        sub ws1 { $_[0]->{ws1} };
        sub ws2 { $_[0]->{ws2} };
        sub ws3 { $_[0]->{ws3} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            if ((((($self->{quant} eq '')) && (($self->{greedy} eq ''))))) {
                return ($self->{term}->emit_perl5())
            };
            if ((((($self->{quant} eq '+')) && (($self->{greedy} eq ''))))) {
                $self->{term}->set_captures_to_array();
                return (('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'last_match_null ' . chr(61) . ' 0' . chr(59) . ' ' . 'my ' . chr(36) . 'last_pos ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' ' . 'my ' . chr(36) . 'count ' . chr(61) . ' 0' . chr(59) . ' ' . 'while (' . $self->{term}->emit_perl5() . ' ' . chr(38) . chr(38) . ' (' . chr(36) . 'last_match_null < 2)) ' . chr(123) . ' ' . 'if (' . chr(36) . 'last_pos ' . chr(61) . chr(61) . ' ' . chr(36) . 'MATCH->to()) ' . chr(123) . ' ' . chr(36) . 'last_match_null ' . chr(61) . ' ' . chr(36) . 'last_match_null + 1' . chr(59) . ' ' . chr(125) . ' ' . 'else ' . chr(123) . ' ' . chr(36) . 'last_match_null ' . chr(61) . ' 0' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . chr(36) . 'last_pos ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' ' . chr(36) . 'count ' . chr(61) . ' ' . chr(36) . 'count + 1' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'last_pos' . chr(59) . ' ' . chr(36) . 'count > 0' . chr(59) . ' ' . chr(125) . ')'))
            };
            if ((((($self->{quant} eq '*')) && (($self->{greedy} eq ''))))) {
                $self->{term}->set_captures_to_array();
                return (('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'last_match_null ' . chr(61) . ' 0' . chr(59) . ' ' . 'my ' . chr(36) . 'last_pos ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' ' . 'while (' . $self->{term}->emit_perl5() . ' ' . chr(38) . chr(38) . ' (' . chr(36) . 'last_match_null < 2)) ' . chr(123) . ' ' . 'if (' . chr(36) . 'last_pos ' . chr(61) . chr(61) . ' ' . chr(36) . 'MATCH->to()) ' . chr(123) . ' ' . chr(36) . 'last_match_null ' . chr(61) . ' ' . chr(36) . 'last_match_null + 1' . chr(59) . ' ' . chr(125) . ' ' . 'else ' . chr(123) . ' ' . chr(36) . 'last_match_null ' . chr(61) . ' 0' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . chr(36) . 'last_pos ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'last_pos' . chr(59) . ' ' . '1 ' . chr(125) . ')'))
            };
            if ((((($self->{quant} eq chr(63))) && (($self->{greedy} eq ''))))) {
                $self->{term}->set_captures_to_array();
                return (('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'last_pos ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' ' . 'if (' . chr(33) . '(do ' . chr(123) . $self->{term}->emit_perl5() . chr(125) . ')) ' . chr(123) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'last_pos' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . '1 ' . chr(125) . ')'))
            };
            warn(('Rul::Quantifier:  not implemented'));
            $self->{term}->emit_perl5()
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            $self->{term}->set_captures_to_array()
        }
    }

;
    {
    package Rul::Or;
        sub new { shift; bless { @_ }, "Rul::Or" }
        sub or_list { $_[0]->{or_list} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'pos1 ' . chr(61) . ' ' . chr(36) . 'MATCH->to' . chr(59) . ' (do ' . chr(123) . ' ' . join(chr(125) . ') ' . chr(124) . chr(124) . ' (do ' . chr(123) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'pos1' . chr(59) . ' ', @{[map($_->emit_perl5(), @{($self->{or_list})})]}) . chr(125) . ') ' . chr(125) . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            [map($_->set_captures_to_array(), @{($self->{or_list})})]
        }
    }

;
    {
    package Rul::Concat;
        sub new { shift; bless { @_ }, "Rul::Concat" }
        sub concat { $_[0]->{concat} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('(' . join(' ' . chr(38) . chr(38) . ' ', @{[map($_->emit_perl5(), @{($self->{concat})})]}) . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            [map($_->set_captures_to_array(), @{($self->{concat})})]
        }
    }

;
    {
    package Rul::Subrule;
        sub new { shift; bless { @_ }, "Rul::Subrule" }
        sub metasyntax { $_[0]->{metasyntax} };
        sub captures { $_[0]->{captures} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ((my  $meth) = (((1 + index($self->{metasyntax}, '.'))) ? Main::_replace($self->{metasyntax}, '.', '->') : ((chr(36) . 'grammar->' . $self->{metasyntax}))));
            (my  $code);
            if ((($self->{captures} == 1))) {
                ($code = ('if (' . chr(36) . 'm2) ' . chr(123) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'm2->to' . chr(59) . ' ' . chr(36) . 'MATCH->' . chr(123) . chr(39) . $self->{metasyntax} . chr(39) . chr(125) . ' ' . chr(61) . ' ' . chr(36) . 'm2' . chr(59) . ' 1 ' . chr(125) . ' else ' . chr(123) . ' 0 ' . chr(125) . chr(59) . ' '))
            }
            else {
                if ((($self->{captures} > 1))) {
                    ($code = ('if (' . chr(36) . 'm2) ' . chr(123) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'm2->to' . chr(59) . ' ' . 'if (exists ' . chr(36) . 'MATCH->' . chr(123) . chr(39) . $self->{metasyntax} . chr(39) . chr(125) . ') ' . chr(123) . ' ' . 'push ' . chr(64) . chr(123) . ' ' . chr(36) . 'MATCH->' . chr(123) . chr(39) . $self->{metasyntax} . chr(39) . chr(125) . ' ' . chr(125) . ', ' . chr(36) . 'm2' . chr(59) . ' ' . chr(125) . ' ' . 'else ' . chr(123) . ' ' . chr(36) . 'MATCH->' . chr(123) . chr(39) . $self->{metasyntax} . chr(39) . chr(125) . ' ' . chr(61) . ' [ ' . chr(36) . 'm2 ]' . chr(59) . ' ' . chr(125) . chr(59) . ' ' . '1 ' . chr(125) . ' else ' . chr(123) . ' 0 ' . chr(125) . chr(59) . ' '))
                }
                else {
                    ($code = 'if (' . chr(36) . 'm2) ' . chr(123) . ' ' . chr(36) . 'MATCH->to ' . chr(61) . ' ' . chr(36) . 'm2->to' . chr(59) . ' 1 ' . chr(125) . ' else ' . chr(123) . ' 0 ' . chr(125) . chr(59) . ' ')
                }
            };
            ('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'm2 ' . chr(61) . ' ' . $meth . '(' . chr(36) . 'str, ' . chr(36) . 'MATCH->to)' . chr(59) . ' ' . $code . chr(125) . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            if ((($self->{captures} > 0))) {
                ($self->{captures} = ($self->{captures} + 1))
            }
        }
    }

;
    {
    package Rul::Var;
        sub new { shift; bless { @_ }, "Rul::Var" }
        sub sigil { $_[0]->{sigil} };
        sub twigil { $_[0]->{twigil} };
        sub name { $_[0]->{name} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ((my  $table) = (do {
    (my  $Hash_a = bless {}, 'HASH');
    ($Hash_a->{chr(36)} = chr(36));
    ($Hash_a->{chr(64)} = chr(36) . 'List_');
    ($Hash_a->{chr(37)} = chr(36) . 'Hash_');
    ($Hash_a->{chr(38)} = chr(36) . 'Code_');
    $Hash_a
}));
            ($table->{$self->{sigil}} . $self->{name})
        }
    }

;
    {
    package Rul::Constant;
        sub new { shift; bless { @_ }, "Rul::Constant" }
        sub constant { $_[0]->{constant} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ((my  $str) = $self->{constant});
            Rul::constant($str)
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::Dot;
        sub new { shift; bless { @_ }, "Rul::Dot" }
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('( ' . chr(39) . chr(39) . ' ne substr( ' . chr(36) . 'str, ' . chr(36) . 'MATCH->to, 1 ) ' . chr(38) . chr(38) . ' (' . chr(36) . 'MATCH->to ' . chr(61) . ' 1 + ' . chr(36) . 'MATCH->to)' . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::SpecialChar;
        sub new { shift; bless { @_ }, "Rul::SpecialChar" }
        sub char { $_[0]->{char} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ((my  $char) = $self->{char});
            if ((($char eq 'n'))) {
                return (Rul::Subrule->new(('metasyntax' => 'is_newline'), ('captures' => 0))->emit_perl5())
            };
            if ((($char eq 'N'))) {
                return (Rul::Subrule->new(('metasyntax' => 'not_newline'), ('captures' => 0))->emit_perl5())
            };
            if ((($char eq 'd'))) {
                return (Rul::Subrule->new(('metasyntax' => 'digit'), ('captures' => 0))->emit_perl5())
            };
            if ((($char eq 's'))) {
                return (Rul::Subrule->new(('metasyntax' => 'space'), ('captures' => 0))->emit_perl5())
            };
            if ((($char eq 't'))) {
                return (Rul::constant(chr(9)))
            };
            return (Rul::constant($char))
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::Block;
        sub new { shift; bless { @_ }, "Rul::Block" }
        sub closure { $_[0]->{closure} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('((do ' . chr(123) . ' ' . $self->{closure} . ' ' . chr(125) . ') ' . chr(124) . chr(124) . ' 1)')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::InterpolateVar;
        sub new { shift; bless { @_ }, "Rul::InterpolateVar" }
        sub var { $_[0]->{var} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            Main::say((chr(35) . ' TODO: interpolate var ' . $self->{var}->emit_perl5() . ''));
            die()
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::NamedCapture;
        sub new { shift; bless { @_ }, "Rul::NamedCapture" }
        sub rule_exp { $_[0]->{rule_exp} };
        sub capture_ident { $_[0]->{capture_ident} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            Main::say((chr(35) . ' TODO: named capture ' . $self->{capture_ident} . ' ' . chr(61) . ' ' . $self->{rule_exp}->emit_perl5() . ''));
            die()
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            Main::say(chr(35) . ' TODO: named capture ')
        }
    }

;
    {
    package Rul::Before;
        sub new { shift; bless { @_ }, "Rul::Before" }
        sub rule_exp { $_[0]->{rule_exp} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'tmp ' . chr(61) . ' ' . chr(36) . 'MATCH' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(61) . ' Perlito5::Match->new( ' . chr(39) . 'str' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'str, ' . chr(39) . 'from' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'tmp->to, ' . chr(39) . 'to' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'tmp->to, ' . chr(39) . 'bool' . chr(39) . ' ' . chr(61) . '> 1  )' . chr(59) . ' ' . chr(36) . 'MATCH->bool ' . chr(61) . ' ' . $self->{rule_exp}->emit_perl5() . chr(59) . ' ' . chr(36) . 'tmp->bool ' . chr(61) . ' ' . chr(36) . 'MATCH ' . chr(63) . ' 1 : 0' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(61) . ' ' . chr(36) . 'tmp' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(63) . ' 1 : 0' . chr(59) . ' ' . chr(125) . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }

;
    {
    package Rul::NotBefore;
        sub new { shift; bless { @_ }, "Rul::NotBefore" }
        sub rule_exp { $_[0]->{rule_exp} };
        sub emit_perl5 {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            ('(do ' . chr(123) . ' ' . 'my ' . chr(36) . 'tmp ' . chr(61) . ' ' . chr(36) . 'MATCH' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(61) . ' Perlito5::Match->new( ' . chr(39) . 'str' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'str, ' . chr(39) . 'from' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'tmp->to, ' . chr(39) . 'to' . chr(39) . ' ' . chr(61) . '> ' . chr(36) . 'tmp->to, ' . chr(39) . 'bool' . chr(39) . ' ' . chr(61) . '> 1  )' . chr(59) . ' ' . chr(36) . 'MATCH->bool ' . chr(61) . ' ' . $self->{rule_exp}->emit_perl5() . chr(59) . ' ' . chr(36) . 'tmp->bool ' . chr(61) . ' ' . chr(33) . chr(36) . 'MATCH' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(61) . ' ' . chr(36) . 'tmp' . chr(59) . ' ' . chr(36) . 'MATCH ' . chr(63) . ' 1 : 0' . chr(59) . ' ' . chr(125) . ')')
        };
        sub set_captures_to_array {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0])
        }
    }


}

1;
