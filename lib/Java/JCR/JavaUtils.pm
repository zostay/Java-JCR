package Java::JCR::JavaUtils;

use strict;
use warnings;

our $VERSION = '0.01';

=head1 NAME

Java::JCR::JavaUtils - Helper utiltiies for going from Perl-to-Java

=head1 DESCRIPTION

This contains some internal utitlies used for dealing with special cases in the Perl-to-Java mapping.

=cut

use Inline (
    Java => <<'END_OF_JAVA',
import java.io.InputStream;
import java.io.IOException;
    
import org.perl.inline.java.InlineJavaPerlCaller;
import org.perl.inline.java.InlineJavaException;
import org.perl.inline.java.InlineJavaPerlException;

class GlobCaller extends InlineJavaPerlCaller {
    private String glob;

    public GlobCaller(String glob) throws InlineJavaException {
        this.glob = glob;
    }

    public int read() throws InlineJavaException, InlineJavaPerlException {
        String ch = (String) CallPerlSub(
                "Java::JCR::JavaUtils::read_one_byte", new Object[] {
                    this.glob
                });
        return ch != null ? ch.charAt(0) : -1;
    }
}

class GlobInputStream extends InputStream {
    private GlobCaller glob;

    public GlobInputStream(GlobCaller glob) {
        this.glob = glob;
    }

    public int read() throws IOException {
        try {
            return this.glob.read();
        }

        catch (InlineJavaException e) {
            throw new IOException("Error reading Perl file handle: " + 
                    e.getMessage());
        }

        catch (InlineJavaPerlException e) {
            throw new IOException("Error reading Perl file handle: " +
                    e.getMessage());
        }
    }
}

END_OF_JAVA
    STUDY => ['java.io.InputStream'],
    PACKAGE => 'Java::JCR',
);
use Inline::Java qw( cast );

sub read_one_byte {
    my $glob = shift;
    my $c = getc $glob;
    return $c;
}

sub input_stream {
    my $glob = shift;
    my $glob_val = $$glob;
    $glob_val =~ s/^\*//;
    my $glob_caller = Java::JCR::GlobCaller->new($glob_val);
    return Java::JCR::GlobInputStream->new($glob_caller);
}

=head1 AUTHOR

Andrew Sterling Hanenkamp, E<lt>hanenkamp@cpan.orgE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright 2006 Andrew Sterling Hanenkamp E<lt>hanenkamp@cpan.orgE<gt>.  All 
Rights Reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE.

=cut

1
