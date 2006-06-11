package Java::JCR::NoSuchWorkspaceException;

# This code was automatically generated by a combination of the
# JCRPackageGenerator.java and package-generator.pl programs. These are both
# distributed in the inc/ directory of the Java-JCR distribution. You should
# be able to find the latest Java-JCR distribution at:
#
#   http://search.cpan.org/~hanenkamp/Java-JCR/
#

use strict;
use warnings;

use base qw( Java::JCR::Base Java::JCR::RepositoryException );

use Inline (
    Java => 'STUDY',
    STUDY => [],
);
use Inline::Java qw( study_classes );

study_classes(['javax.jcr.NoSuchWorkspaceException'], 'Java::JCR');

sub new {
    my $class = shift;

    return bless { 
        obj => Java::JCR::javax::jcr::NoSuchWorkspaceException->new(@_),
    }, $class;
}

sub get_cause {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getCause(@args);
    return $result;
}

sub print_stack_trace {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->printStackTrace(@args);
    return $result;
}

sub get_message {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getMessage(@args);
    return $result;
}

sub fill_in_stack_trace {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->fillInStackTrace(@args);
    return $result;
}

sub to_string {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->toString(@args);
    return $result;
}

sub init_cause {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->initCause(@args);
    return $result;
}

sub get_localized_message {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getLocalizedMessage(@args);
    return $result;
}

sub set_stack_trace {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->setStackTrace(@args);
    return $result;
}

sub get_stack_trace {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getStackTrace(@args);
    return $result;
}

1;
__END__

=head1 NAME

Java::JCR::NoSuchWorkspaceException - Perl wrapper for javax.jcr.NoSuchWorkspaceException

=head1 DESCRIPTION

This is an automatically generated package wrapping javax.jcr.NoSuchWorkspaceException with a nice Perlish API.

For full documentation of what this class does, see the Java API documentation: L<http://www.day.com/maven/jsr170/javadocs/jcr-1.0/javax/jcr/NoSuchWorkspaceException.html>

The deviations from the API documentation include the following:

=over

=item *

You will need to use Perl, intead of Java, to make any use of this API. (Duh.)

=item *

The package to use is L<Java::JCR::NoSuchWorkspaceException>, rather than I<javax.jcr.NoSuchWorkspaceException>.

=item *

All method names have been changed from Java-style C<camelCase()> to Perl-style C<lower_case()>. 

Thus, if the function were named C<getName()> in the Java API, it will be named C<get_name()> in this API. As another example, C<nextEventListener()> in the Java API will be C<next_event_listener()> in this API.

=back

=head1 SEE ALSO

L<Java::JCR>, L<http://www.day.com/maven/jsr170/javadocs/jcr-1.0/javax/jcr/NoSuchWorkspaceException.html>

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

