require Filesys;
package Filesys::Statvfs;

use strict;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

require Exporter;
require DynaLoader;

@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(statvfs);
$VERSION = '0.20';

1;
__END__

=head1 NAME

Filesys::Statvfs - Perl extension for statvfs().

=head1 SYNOPSIS

  use Filesys::Statvfs;

	my($bsize, $frsize, $blocks, $bfree, $bavail,
	$files, $ffree, $favail, $fsid, $basetype, $flag,
	$namemax, $fstr)=statvfs("/tmp");


=head1 DESCRIPTION

Interface for statvfs();

The statvfs() function will return a list
of values or will return undef and 
set $! if there was an error.

The values returned are described in the statvfs header. 

Bugs:
On Digital Unix the $fstr is NULL.

=head1 AUTHOR

Ian Guthrie
IGuthrie@aol.com

=head1 SEE ALSO

statvfs(2), df(1M)

=cut
