# Do not edit this file - Generated by MiniPerl6 3.0
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package EvalFunction;
sub new { shift; bless { @_ }, "EvalFunction" }
sub func { @_ == 1 ? ( $_[0]->{func} ) : ( $_[0]->{func} = $_[1] ) };
sub apply { my $self = shift; my $List__ = \@_; my $env; my $args; do {  ($env = $List__->[0]);  ($args = $List__->[1]); [$env, $args] }; $self->{func}->($env, $args) }

}
{
package CompUnit;
sub new { shift; bless { @_ }, "CompUnit" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub attributes { @_ == 1 ? ( $_[0]->{attributes} ) : ( $_[0]->{attributes} = $_[1] ) };
sub methods { @_ == 1 ? ( $_[0]->{methods} ) : ( $_[0]->{methods} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $env1 = [{  }, @{$env}]); do { for my $stmt ( @{$self->{body}} ) { $stmt->eval($env1) } } }

}
{
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub int { @_ == 1 ? ( $_[0]->{int} ) : ( $_[0]->{int} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (0+$self->{int}) }

}
{
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub bit { @_ == 1 ? ( $_[0]->{bit} ) : ( $_[0]->{bit} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; $self->{bit} }

}
{
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub num { @_ == 1 ? ( $_[0]->{num} ) : ( $_[0]->{num} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (0+$self->{num}) }

}
{
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub buf { @_ == 1 ? ( $_[0]->{buf} ) : ( $_[0]->{buf} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; $self->{buf} }

}
{
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (undef) }

}
{
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub class { @_ == 1 ? ( $_[0]->{class} ) : ( $_[0]->{class} = $_[1] ) };
sub fields { @_ == 1 ? ( $_[0]->{fields} ) : ( $_[0]->{fields} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Val::Object'); 'bless(' . Main::perl($self->{fields}, ) . ', ' . Main::perl($self->{class}, ) . ')' }

}
{
package Lit::Seq;
sub new { shift; bless { @_ }, "Lit::Seq" }
sub seq { @_ == 1 ? ( $_[0]->{seq} ) : ( $_[0]->{seq} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Lit::Seq') }

}
{
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub array1 { @_ == 1 ? ( $_[0]->{array1} ) : ( $_[0]->{array1} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; my  $List_a; do { for my $v ( @{$self->{array1}} ) { push( @{$List_a}, $v->eval($env) ) } }; return($List_a) }

}
{
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub hash1 { @_ == 1 ? ( $_[0]->{hash1} ) : ( $_[0]->{hash1} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; my  $Hash_h; do { for my $field ( @{$self->{hash1}} ) { ($Hash_h->{$field->[0]->eval($env)} = $field->[1]->eval($env)) } }; return($Hash_h) }

}
{
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub class { @_ == 1 ? ( $_[0]->{class} ) : ( $_[0]->{class} = $_[1] ) };
sub fields { @_ == 1 ? ( $_[0]->{fields} ) : ( $_[0]->{fields} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Lit::Object'); (my  $fields = $self->{fields}); (my  $str = ''); do { for my $field ( @{$fields} ) { ($str = $str . $field->[0]->eval() . ' => ' . $field->[1]->eval() . ',') } }; $self->{class} . '->new( ' . $str . ' )' }

}
{
package Index;
sub new { shift; bless { @_ }, "Index" }
sub obj { @_ == 1 ? ( $_[0]->{obj} ) : ( $_[0]->{obj} = $_[1] ) };
sub index_exp { @_ == 1 ? ( $_[0]->{index_exp} ) : ( $_[0]->{index_exp} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; $self->{obj}->eval($env)->[$self->{index_exp}->eval($env)] }

}
{
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub obj { @_ == 1 ? ( $_[0]->{obj} ) : ( $_[0]->{obj} = $_[1] ) };
sub index_exp { @_ == 1 ? ( $_[0]->{index_exp} ) : ( $_[0]->{index_exp} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; $self->{obj}->eval($env)->{$self->{index_exp}->eval($env)} }

}
{
package Var;
sub new { shift; bless { @_ }, "Var" }
sub sigil { @_ == 1 ? ( $_[0]->{sigil} ) : ( $_[0]->{sigil} = $_[1] ) };
sub twigil { @_ == 1 ? ( $_[0]->{twigil} ) : ( $_[0]->{twigil} = $_[1] ) };
sub namespace { @_ == 1 ? ( $_[0]->{namespace} ) : ( $_[0]->{namespace} = $_[1] ) };
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $ns = ''); do { if ($self->{namespace}) { ($ns = $self->{namespace} . '::') } else { do { if ((($self->{sigil} eq '@') && (($self->{twigil} eq '*') && ($self->{name} eq 'ARGS')))) { return((\@ARGV)) } else {  } };do { if (($self->{twigil} eq '.')) { warn('Interpreter TODO: $.' . $self->{name});return('$self->{' . $self->{name} . '}') } else {  } };do { if (($self->{name} eq '/')) { warn('Interpreter TODO: $/');return($self->{sigil} . 'MATCH') } else {  } } } }; (my  $name = $self->{sigil} . $ns . $self->{name}); do { for my $e ( @{$env} ) { do { if (exists($e->{$name})) { return($e->{$name}) } else {  } } } }; warn('Interpreter runtime error: variable \'', $name, '\' not found') };
sub plain_name { my $self = shift; my $List__ = \@_; do { [] }; do { if ($self->{namespace}) { return($self->{sigil} . $self->{namespace} . '::' . $self->{name}) } else {  } }; return($self->{sigil} . $self->{name}) }

}
{
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub parameters { @_ == 1 ? ( $_[0]->{parameters} ) : ( $_[0]->{parameters} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; do { if (Main::isa($self->{parameters}, 'Lit::Array')) { warn('Interpreter TODO: Bind') } else {  } }; do { if (Main::isa($self->{parameters}, 'Lit::Hash')) { warn('Interpreter TODO: Bind') } else {  } }; do { if (Main::isa($self->{parameters}, 'Lit::Object')) { warn('Interpreter TODO: Bind') } else {  } }; do { if (Main::isa($self->{parameters}, 'Decl')) { $self->{parameters}->eval($env) } else {  } }; (my  $name = $self->{parameters}->plain_name()); (my  $value = $self->{arguments}->eval($env)); do { for my $e ( @{$env} ) { do { if (exists($e->{$name})) { ($e->{$name} = $value);return($value) } else {  } } } }; warn('Interpreter Bind: variable \'' . $name . '\' not found') }

}
{
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; ("" . $self->{name}) }

}
{
package Call;
sub new { shift; bless { @_ }, "Call" }
sub invocant { @_ == 1 ? ( $_[0]->{invocant} ) : ( $_[0]->{invocant} = $_[1] ) };
sub hyper { @_ == 1 ? ( $_[0]->{hyper} ) : ( $_[0]->{hyper} = $_[1] ) };
sub method { @_ == 1 ? ( $_[0]->{method} ) : ( $_[0]->{method} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Call'); (my  $invocant = $self->{invocant}->eval($env)); do { if (($invocant eq 'self')) { ($invocant = '$self') } else {  } }; do { if ($self->{hyper}) {  } else {  } }; warn('Interpreter runtime error: method \'', $self->{method}, '()\' not found') }

}
{
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub code { @_ == 1 ? ( $_[0]->{code} ) : ( $_[0]->{code} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
sub namespace { @_ == 1 ? ( $_[0]->{namespace} ) : ( $_[0]->{namespace} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $ns = ''); do { if ($self->{namespace}) { ($ns = $self->{namespace} . '::') } else {  } }; (my  $code = $ns . $self->{code}); do { for my $e ( @{$env} ) { do { if (exists($e->{$code})) { return($e->{$code}->apply($env, $self->{arguments})) } else {  } } } }; warn('Interpreter runtime error: subroutine \'', $code, '()\' not found') }

}
{
package Return;
sub new { shift; bless { @_ }, "Return" }
sub result { @_ == 1 ? ( $_[0]->{result} ) : ( $_[0]->{result} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Return'); return('return(' . $self->{result}->eval() . ')') }

}
{
package If;
sub new { shift; bless { @_ }, "If" }
sub cond { @_ == 1 ? ( $_[0]->{cond} ) : ( $_[0]->{cond} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub otherwise { @_ == 1 ? ( $_[0]->{otherwise} ) : ( $_[0]->{otherwise} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $cond = $self->{cond}); do { if ((Main::isa($cond, 'Apply') && ($cond->code() eq 'prefix:<!>'))) { (my  $if = If->new( 'cond' => $cond->arguments()->[0],'body' => $self->{otherwise},'otherwise' => $self->{body}, ));return($if->eval($env)) } else {  } }; do { if ($cond->eval($env)) { (my  $env1 = [{  }, @{$env}]);do { for my $stmt ( @{$self->{body}} ) { $stmt->eval($env1) } } } else { (my  $env1 = [{  }, @{$env}]);do { for my $stmt ( @{$self->{otherwise}} ) { $stmt->eval($env1) } } } }; return((undef)) }

}
{
package For;
sub new { shift; bless { @_ }, "For" }
sub cond { @_ == 1 ? ( $_[0]->{cond} ) : ( $_[0]->{cond} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub topic { @_ == 1 ? ( $_[0]->{topic} ) : ( $_[0]->{topic} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $cond = $self->{cond}); (my  $topic_name = $self->{topic}->plain_name()); (my  $env1 = [{  }, @{$env}]); do { for my $topic ( @{$cond->eval($env)} ) { ($env1->[0] = { $topic_name => $topic, });do { for my $stmt ( @{$self->{body}} ) { $stmt->eval($env1) } } } }; return((undef)) }

}
{
package When;
sub new { shift; bless { @_ }, "When" }
sub parameters { @_ == 1 ? ( $_[0]->{parameters} ) : ( $_[0]->{parameters} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; die('TODO - When') }

}
{
package While;
sub new { shift; bless { @_ }, "While" }
sub cond { @_ == 1 ? ( $_[0]->{cond} ) : ( $_[0]->{cond} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; die('TODO - While') }

}
{
package Leave;
sub new { shift; bless { @_ }, "Leave" }
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; die('TODO - Leave') }

}
{
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub decl { @_ == 1 ? ( $_[0]->{decl} ) : ( $_[0]->{decl} = $_[1] ) };
sub type { @_ == 1 ? ( $_[0]->{type} ) : ( $_[0]->{type} = $_[1] ) };
sub var { @_ == 1 ? ( $_[0]->{var} ) : ( $_[0]->{var} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $decl = $self->{decl}); (my  $name = $self->{var}->plain_name()); do { if (($decl eq 'has')) { warn('Interpreter TODO: has') } else {  } }; do { if (exists($env->[0]->{$name})) {  } else { ($env->[0]->{$name} = (undef)) } }; return((undef)) };
sub plain_name { my $self = shift; my $List__ = \@_; do { [] }; $self->{var}->plain_name() }

}
{
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub invocant { @_ == 1 ? ( $_[0]->{invocant} ) : ( $_[0]->{invocant} = $_[1] ) };
sub positional { @_ == 1 ? ( $_[0]->{positional} ) : ( $_[0]->{positional} = $_[1] ) };
sub named { @_ == 1 ? ( $_[0]->{named} ) : ( $_[0]->{named} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Sig') }

}
{
package Method;
sub new { shift; bless { @_ }, "Method" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub sig { @_ == 1 ? ( $_[0]->{sig} ) : ( $_[0]->{sig} = $_[1] ) };
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Method'); (my  $sig = $self->{sig}); (my  $invocant = $sig->invocant()); (my  $pos = $sig->positional()); (my  $str = 'my $List__ = \\@_; ') }

}
{
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub sig { @_ == 1 ? ( $_[0]->{sig} ) : ( $_[0]->{sig} = $_[1] ) };
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; my  $List_param_name; do { for my $field ( @{$self->{sig}->positional()} ) { push( @{$List_param_name}, $field->plain_name() ) } }; (my  $sub = EvalFunction->new( 'func' => sub  { my $List__ = \@_; my $env; my $args; do {  ($env = $List__->[0]);  ($args = $List__->[1]); [$env, $args] }; my  $Hash_context; (my  $n = 0); ($Hash_context->{'@_'} = $args); do { for my $name ( @{$List_param_name} ) { ($Hash_context->{$name} = $args->[$n]->eval($env));($n = ($n + 1)) } }; (my  $env1 = [$Hash_context, @{$env}]); my  $r; do { for my $stmt ( @{$self->{block}} ) { ($r = $stmt->eval($env1)) } }; return($r) }, )); do { if ($self->{name}) { ($env->[0]->{$self->{name}} = $sub) } else {  } }; return($sub) }

}
{
package Do;
sub new { shift; bless { @_ }, "Do" }
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; (my  $env1 = [{  }, @{$env}]); do { for my $stmt ( @{$self->{block}} ) { $stmt->eval($env1) } } }

}
{
package Use;
sub new { shift; bless { @_ }, "Use" }
sub mod { @_ == 1 ? ( $_[0]->{mod} ) : ( $_[0]->{mod} = $_[1] ) };
sub eval { my $self = shift; my $List__ = \@_; my $env; do {  ($env = $List__->[0]); [$env] }; warn('Interpreter TODO: Use'); 'use ' . $self->{mod} }

}
1;
