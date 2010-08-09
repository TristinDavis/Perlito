
class Main {
    use Test;
    use MiniPerl6::Expression;
   
    Test::plan 41;
    Test::ok( 
        ($(MiniPerl6::Expression.exp_parse( "123", 0))).perl eq 
        "Val::Int.new('int' => 123)",
        "Int");
    Test::ok( 
        ($(MiniPerl6::Expression.exp_parse( "$abc", 0))).perl eq 
        "Var.new('name' => 'abc', 'namespace' => '', 'sigil' => '$', 'twigil' => '')",
        "Var");
    Test::ok( 
        ($(MiniPerl6::Expression.exp_parse( "2+3", 0))).perl eq 
        "Apply.new('arguments' => [Val::Int.new('int' => 2), Val::Int.new('int' => 3)], 'code' => 'infix:<+>', 'namespace' => '')",
        "infix");
    Test::ok( 
        ($(MiniPerl6::Expression.exp_parse( "2+3*4", 0))).perl eq 
        "Apply.new('arguments' => [Val::Int.new('int' => 2), Apply.new('arguments' => [Val::Int.new('int' => 3), Val::Int.new('int' => 4)], 'code' => 'infix:<*>', 'namespace' => '')], 'code' => 'infix:<+>', 'namespace' => '')",
        "infix precedence");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "", 0)).capture).perl eq 
        "undef",
        "empty expression");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "[2,3]", 0)).capture).perl eq 
        "Lit::Array.new('array1' => Apply.new('arguments' => [Val::Int.new('int' => 2), Val::Int.new('int' => 3)], 'code' => 'list:<,>', 'namespace' => ''))",
        "array");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a[4]", 0)).capture).perl eq 
        "Index.new('index_exp' => Val::Int.new('int' => 4), 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''))",
        "array index");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a[4][5]", 0)).capture).perl eq 
        "Index.new('index_exp' => Val::Int.new('int' => 5), 'obj' => Index.new('index_exp' => Val::Int.new('int' => 4), 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => '')))",
        "array index");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "push $a, 30", 0)).capture).perl eq 
        "Apply.new('arguments' => Apply.new('arguments' => [Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), Val::Int.new('int' => 30)], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'push', 'namespace' => '')",
        "function call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( ".push 30", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 30), 'hyper' => 0, 'invocant' => undef, 'method' => 'push')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "pi", 0)).capture).perl eq 
        "Apply.new('arguments' => undef, 'code' => 'pi', 'namespace' => '')",
        "function call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( ".pop", 0)).capture).perl eq 
        "Call.new('arguments' => undef, 'hyper' => 0, 'invocant' => undef, 'method' => 'pop')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "@x.pop", 0)).capture).perl eq 
        "Call.new('arguments' => undef, 'hyper' => 0, 'invocant' => Var.new('name' => 'x', 'namespace' => '', 'sigil' => '@', 'twigil' => ''), 'method' => 'pop')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "(1,2,3)", 0)).capture).perl eq 
        "Apply.new('arguments' => Apply.new('arguments' => [Val::Int.new('int' => 1), Val::Int.new('int' => 2), Val::Int.new('int' => 3)], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'circumfix:<( )>', 'namespace' => '')",
        "list in parentheses");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "push($a, 30)", 0)).capture).perl eq 
        "Apply.new('arguments' => Apply.new('arguments' => [Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), Val::Int.new('int' => 30)], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'push', 'namespace' => '')",
        "function call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.push(30)", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 30), 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'push')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a()", 0)).capture).perl eq 
        "Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>')",
        "function call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a(3)", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 3), 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>')",
        "function call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.()", 0)).capture).perl eq 
        "Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.(3)", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 3), 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.()()", 0)).capture).perl eq 
        "Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>'), 'method' => 'postcircumfix:<( )>')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.().()", 0)).capture).perl eq 
        "Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Call.new('arguments' => '', 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<( )>'), 'method' => 'postcircumfix:<( )>')",
        "method call");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.[4]", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 4), 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'postcircumfix:<[ ]>')",
        "array index method");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a.push 30", 0)).capture).perl eq 
        "Call.new('arguments' => Val::Int.new('int' => 30), 'hyper' => 0, 'invocant' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), 'method' => 'push')",
        "method call no parentheses");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "a => 30", 0)).capture).perl eq 
        "Apply.new('arguments' => [Val::Buf.new('buf' => 'a'), Val::Int.new('int' => 30)], 'code' => 'pair', 'namespace' => '')",
        "fat arrow");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{ 12 }", 0)).capture).perl eq 
        "Lit::Block.new('stmts' => [Val::Int.new('int' => 12)])",
        "block");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{ 13; 14 }", 0)).capture).perl eq 
        "Lit::Block.new('stmts' => [Val::Int.new('int' => 13), Val::Int.new('int' => 14)])",
        "block");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{ a => 2, }", 0)).capture).perl eq 
        "Lit::Hash.new('hash1' => Apply.new('arguments' => [Apply.new('arguments' => [Val::Buf.new('buf' => 'a'), Val::Int.new('int' => 2)], 'code' => 'pair', 'namespace' => '')], 'code' => 'postfix:<,>', 'namespace' => ''))",
        "hash or pair");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{a => 2, x => 3}", 0)).capture).perl eq 
        "Lit::Hash.new('hash1' => Apply.new('arguments' => [Apply.new('arguments' => [Val::Buf.new('buf' => 'a'), Val::Int.new('int' => 2)], 'code' => 'pair', 'namespace' => ''), Apply.new('arguments' => [Val::Buf.new('buf' => 'x'), Val::Int.new('int' => 3)], 'code' => 'pair', 'namespace' => '')], 'code' => 'list:<,>', 'namespace' => ''))",
        "hash");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( ":$a", 0)).capture).perl eq 
        "Apply.new('arguments' => [Val::Buf.new('buf' => 'a'), Var.new('name' => 'a', 'sigil' => '$', 'twigil' => '')], 'code' => 'pair', 'namespace' => '')",
        "pair");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{ pair $a, 3 }", 0)).capture).perl eq 
        "Lit::Hash.new('hash1' => Apply.new('arguments' => Apply.new('arguments' => [Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''), Val::Int.new('int' => 3)], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'pair', 'namespace' => ''))",
        "pair");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "{ }", 0)).capture).perl eq 
        "Lit::Hash.new('hash1' => '')",
        "hash");

    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "%a{}", 0)).capture).perl eq 
        "Lookup.new('index_exp' => '', 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '%', 'twigil' => ''))",
        "whole hash");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "@a[]", 0)).capture).perl eq 
        "Index.new('index_exp' => '', 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '@', 'twigil' => ''))",
        "whole array");

    say "# Block terminates an expression";
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "2 { 3 }", 0)).capture).perl eq 
        "Val::Int.new('int' => 2)",
        "block ends expression");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "%a{ 3 }", 0)).capture).perl eq 
        "Lookup.new('index_exp' => Val::Int.new('int' => 3), 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '%', 'twigil' => ''))",
        "hash subscript - block doesn't end expression");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "x 2, { 3 } + 4", 0)).capture).perl eq 
        "Apply.new('arguments' => [Apply.new('arguments' => Apply.new('arguments' => [Val::Int.new('int' => 2), Lit::Block.new('stmts' => [Val::Int.new('int' => 3)])], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'x', 'namespace' => ''), Val::Int.new('int' => 4)], 'code' => 'infix:<+>', 'namespace' => '')",
        "block ends list");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "x { 3 }, 2 + 4", 0)).capture).perl eq 
        "Apply.new('arguments' => Apply.new('arguments' => [Lit::Block.new('stmts' => [Val::Int.new('int' => 3)]), Apply.new('arguments' => [Val::Int.new('int' => 2), Val::Int.new('int' => 4)], 'code' => 'infix:<+>', 'namespace' => '')], 'code' => 'list:<,>', 'namespace' => ''), 'code' => 'x', 'namespace' => '')",
        "block doesn't end list");

    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "2**3**4", 0)).capture).perl eq 
        "Apply.new('arguments' => [Val::Int.new('int' => 2), Apply.new('arguments' => [Val::Int.new('int' => 3), Val::Int.new('int' => 4)], 'code' => 'infix:<**>', 'namespace' => '')], 'code' => 'infix:<**>', 'namespace' => '')",
        "assoc right");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "$a++ && --$b", 0)).capture).perl eq 
        "Apply.new('arguments' => [Apply.new('arguments' => [Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => '')], 'code' => 'postfix:<++>', 'namespace' => ''), Apply.new('arguments' => [Var.new('name' => 'b', 'namespace' => '', 'sigil' => '$', 'twigil' => '')], 'code' => 'prefix:<-->', 'namespace' => '')], 'code' => 'infix:<&&>', 'namespace' => '')",
        "autoincrement, autodecrement");
    Test::ok( 
        ((MiniPerl6::Expression.exp_parse( "@%$a[2]", 0)).capture).perl eq 
        "Apply.new('arguments' => [Apply.new('arguments' => [Index.new('index_exp' => Val::Int.new('int' => 2), 'obj' => Var.new('name' => 'a', 'namespace' => '', 'sigil' => '$', 'twigil' => ''))], 'code' => 'prefix:<%>', 'namespace' => '')], 'code' => 'prefix:<@>', 'namespace' => '')",
        "prefixes");

    # TODO

    # chain ops: ne, eq, ...
    # |a|b
    # !!

    # Test::ok( 
    #     ((MiniPerl6::Expression.exp_parse( "$a => 30, $b => 31", 0)).capture).perl eq 
    #     "undef",
    #     "fat arrow");
    # Test::ok( 
    #     ((MiniPerl6::Expression.exp_parse( ":a<2>", 0)).capture).perl eq 
    #     "undef",
    #     "pair");
    # Test::ok( 
    #     ((MiniPerl6::Expression.exp_parse( "{1,2,3,4}", 0)).capture).perl eq 
    #     "Lit::Hash.new('hash1' => Apply.new('arguments' => [Apply.new('arguments' => [Val::Buf.new('buf' => 'a'), Val::Int.new('int' => 2)], 'code' => 'pair', 'namespace' => ''), Apply.new('arguments' => [Val::Buf.new('buf' => 'x'), Val::Int.new('int' => 3)], 'code' => 'pair', 'namespace' => '')], 'code' => 'list:<,>', 'namespace' => ''))",
    #     "block");
}