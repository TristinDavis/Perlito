# Do not edit this file - Generated by Perlito5 9.0
use v5;
use Perlito5::Perl5::Runtime;
package main;
use v5;
package Perlito5::Javascript::IO;
sub Perlito5::Javascript::IO::emit_javascript {
    return ((('//' . chr(10) . '//' . chr(10) . '// lib/Perlito5/Javascript/IO.js' . chr(10) . '//' . chr(10) . '// I/O functions for "Perlito" Perl5-in-Javascript' . chr(10) . '//' . chr(10) . '// AUTHORS' . chr(10) . '//' . chr(10) . '// Flavio Soibelmann Glock  fglock@gmail.com' . chr(10) . '//' . chr(10) . '// COPYRIGHT' . chr(10) . '//' . chr(10) . '// Copyright 2009, 2010, 2011, 2012 by Flavio Soibelmann Glock and others.' . chr(10) . '//' . chr(10) . '// This program is free software; you can redistribute it and/or modify it' . chr(10) . '// under the same terms as Perl itself.' . chr(10) . '//' . chr(10) . '// See http://www.perl.com/perl/misc/Artistic.html' . chr(10) . chr(10) . 'var isNode = typeof require != "undefined";' . chr(10) . 'if (isNode) {' . chr(10) . chr(10) . '    var fs = require("fs");' . chr(10) . chr(10) . '    p5atime = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat["atime"];' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5mtime = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat["mtime"];' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5ctime = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat["ctime"];' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5size = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat["size"];' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5is_file = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat.isFile() ? 1 : 0;' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5is_directory = function(s) {' . chr(10) . '        try {' . chr(10) . '            var stat = fs.statSync(s); return stat.isDirectory() ? 1 : 0;' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . '    p5file_exists = function(s) {' . chr(10) . '        return p5is_file(s) || p5is_directory(s);' . chr(10) . '    };' . chr(10) . chr(10) . '    CORE.chdir = function(List__) {' . chr(10) . '        try {' . chr(10) . '            process.chdir(p5str(List__[0]));' . chr(10) . '            return 1;' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . chr(10) . '    CORE.rename = function(List__) {' . chr(10) . '        try {' . chr(10) . '            fs.renameSync(p5str(List__[0]), p5str(List__[1]));' . chr(10) . '            return 1;' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            p5pkg["main"]["v_!"] = err;' . chr(10) . '            return ' . chr(39) . chr(39) . ';' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . chr(10) . '    CORE.unlink = function(List__) {' . chr(10) . '        var count = 0;' . chr(10) . '        try {' . chr(10) . '            for(var i = 0; i < List__.length; i++) {' . chr(10) . '                fs.unlinkSync(p5str(List__[i]));' . chr(10) . '                count++;' . chr(10) . '            }' . chr(10) . '            return count;' . chr(10) . '        }' . chr(10) . '        catch(err) {' . chr(10) . '            p5pkg["main"]["v_!"] = err;' . chr(10) . '            return count;' . chr(10) . '        }' . chr(10) . '    };' . chr(10) . chr(10) . '}' . chr(10) . chr(10))))
};
1;

1;
