package Filesys;

use strict;
use Carp;
use vars qw($VERSION @ISA @EXPORT);

require Exporter;
require DynaLoader;
require 5.003;

@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(statvfs);
$VERSION = '0.01';
bootstrap Filesys $VERSION;

sub import {
   shift;
    my @list=@_ ? @_ :qw(Statvfs Df);

    eval join("", map { "require Filesys::" . (/(\w+)/)[0] . ";\n" } @list)
        or croak $@;
}


1;
__END__

=head1 NAME

Filesys - Load various Filesys modules

=head1 SYNOPSIS

  use Filesys;

=head1 DESCRIPTION

Provides an interface to all of the Filesys modules.
Currently this includes:

Filesys::Statvfs
Filesys::Df

=head1 AUTHOR

Ian Guthrie
IGuthrie@aol.com

=head1 SEE ALSO

perl(1) statvfs(2) df(1M) bdf(1M)
Filesys::Statvfs
Filesys::Df

=cut
