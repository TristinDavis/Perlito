# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
{
package main;
    sub new { shift; bless { @_ }, "main" }
    use v5;
    package CompUnit;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub name {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'name'}
    };
    sub body {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'body'}
    };
    package Val::Int;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub int {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'int'}
    };
    package Val::Num;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub num {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'num'}
    };
    package Val::Buf;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub buf {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'buf'}
    };
    package Lit::Block;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub sig {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'sig'}
    };
    sub stmts {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'stmts'}
    };
    package Lit::Array;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub array1 {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'array1'}
    };
    package Lit::Hash;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub hash1 {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'hash1'}
    };
    package Index;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub obj {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'obj'}
    };
    sub index_exp {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'index_exp'}
    };
    package Lookup;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub obj {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'obj'}
    };
    sub index_exp {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'index_exp'}
    };
    package Var;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub sigil {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'sigil'}
    };
    sub namespace {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'namespace'}
    };
    sub name {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'name'}
    };
    package Proto;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub name {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'name'}
    };
    package Call;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub invocant {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'invocant'}
    };
    sub method {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'method'}
    };
    sub arguments {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'arguments'}
    };
    package Apply;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub code {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'code'}
    };
    sub arguments {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'arguments'}
    };
    sub namespace {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'namespace'}
    };
    package If;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub cond {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'cond'}
    };
    sub body {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'body'}
    };
    sub otherwise {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'otherwise'}
    };
    package While;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub init {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'init'}
    };
    sub cond {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'cond'}
    };
    sub continue {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'continue'}
    };
    sub body {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'body'}
    };
    package For;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub cond {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'cond'}
    };
    sub body {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'body'}
    };
    package Decl;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub decl {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'decl'}
    };
    sub type {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'type'}
    };
    sub var {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'var'}
    };
    package Sig;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub invocant {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'invocant'}
    };
    sub positional {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'positional'}
    };
    sub named {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'named'}
    };
    package Sub;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub name {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'name'}
    };
    sub sig {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'sig'}
    };
    sub block {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'block'}
    };
    package Do;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub block {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'block'}
    };
    package Use;
    sub new {
        my $List__ = bless \@_, "ARRAY";
        ((my  $class) = shift());
        bless((do {
    (my  $Hash_a = bless {}, 'HASH');
    (do {
        ((my  $_i) = 0);
        ((my  $List__a = bless [], 'ARRAY') = $List__);
        for ( ; (($_i < scalar( @{$List__a} )));  ) {
            ($Hash_a->{$List__a->[$_i]} = $List__a->[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    $Hash_a
}), $class)
    };
    sub mod {
        my $List__ = bless \@_, "ARRAY";
        $List__->[0]->{'mod'}
    }
}

1;
