class Main {
    use MiniPerl6::Go::Emitter;
    use MiniPerl6::Lisp::Emitter;
    use MiniPerl6::Perl5::Emitter;
    use MiniPerl6::Javascript::Emitter;
    use MiniPerl6::Parrot::Emitter;
    use MiniPerl6::Grammar;
    use MiniPerl6::Grammar::Control;
    use MiniPerl6::Grammar::Mapping;
    use MiniPerl6::Grammar::Regex;
    use MiniPerl6::Emitter::Token;

    my $_V6_COMPILER_NAME    := 'MiniPerl6';
    my $_V6_COMPILER_VERSION := '2.0';
    my $source      := '';
    my $backend     := 'go';
    my $execute     := 0;
    my $verbose     := 0;
    my $comp_units  := [];
    my $perl6lib    := './lib';

    my %module_seen;

sub add_comp_unit ($comp_unit) {
    # say "comp_unit use:"; 
    for @( $comp_unit.body ) -> $stmt {
        if $stmt.isa('Use') {
            my $module_name := $stmt.mod;
            if !(%module_seen{$module_name}) {
                %module_seen{$module_name} := 1;
                # say "  now use: ", $module_name;
                if $backend eq 'perl5' {
                    # skip 'use' statements in perl5 backend
                }
                else {
                    # build the filename
                    # look for a precompiled version
                    # or load source and compile
                    # push AST into comp_units

                    my $filename := $module_name;
                    $filename := $perl6lib ~ '/' ~ $filename ~ '.pm';
                    # say "  now use: ", $filename;
                    # my $source := IO::slurp( $filename );
                }
            }
        }
    }
    $comp_units.push( $comp_unit );
    # say "comp_unit done";
}

token parse {
    | <MiniPerl6::Grammar.comp_unit>
        { add_comp_unit( $$<MiniPerl6::Grammar.comp_unit> ) }
        [ <parse> | '' ]
    | ''
}

    if (@*ARGS[0] eq '-v') || (@*ARGS[0] eq '--verbose') {
        $verbose := 1;
        shift @*ARGS;
    }
    if (@*ARGS[0] eq '-V') || (@*ARGS[0] eq '--version') {
        $backend := '';
        say $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
        shift @*ARGS;
    }
    if (@*ARGS[0] eq '-h') || (@*ARGS[0] eq '--help') {
        $backend := '';
        say $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION, "
mp6 [switches] [programfile]
  switches:
    -h --help
    -v --verbose
    -V --version
    -e program      one line of program (omit programfile)
    -Ctarget        target backend: go, js, lisp, parrot, perl5, ast-perl6
";
        shift @*ARGS;
    }
    if substr(@*ARGS[0], 0, 2) eq '-C' {
        $backend := substr(@*ARGS[0], 2, 10);
        $execute := 0;
        shift @*ARGS;
    }
    if substr(@*ARGS[0], 0, 2) eq '-B' {
        $backend := substr(@*ARGS[0], 2, 10);
        $execute := 1;
        shift @*ARGS;
    }
    if $backend {
        if @*ARGS[0] eq '-e' {
            shift @*ARGS;
            $source := @*ARGS.shift;
        }
        else {
            $source := IO::slurp( @*ARGS.shift );
        }

        if $verbose {
            warn "// MiniPerl6 compiler";
            warn "// ARGS: ", @*ARGS.perl;
            warn "// backend: ", $backend;
        }

        my $m := Main.parse( 
            $source, 
            0, 
        );

        if $backend eq 'ast-perl6' {
            say "# AST dump - do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            say $comp_units.perl;
        }
        if $backend eq 'go' {
            say "// Do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            say CompUnit::emit_go_program( $comp_units );
        }
        if $backend eq 'lisp' {
            say ";; Do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            for @($comp_units) -> $c {
                say $c.emit_lisp;
            }
        }
        if $backend eq 'perl5' {
            say "# Do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            say "use v5;";
            say "use strict;";
            say "use MiniPerl6::Perl5::Runtime;";
            say "use MiniPerl6::Perl5::Match;";
            for @($comp_units) -> $c {
                say "{\n", $c.emit, "}";
            }
            say "1;";
        }
        if $backend eq 'js' {
            say "// Do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            for @($comp_units) -> $c {
                say $c.emit_javascript;
            }
        }
        if $backend eq 'parrot' {
            say "# Do not edit this file - Generated by ", $_V6_COMPILER_NAME, " ", $_V6_COMPILER_VERSION;
            for @($comp_units) -> $c {
                say $c.emit_parrot;
            }
        }
    }
}
