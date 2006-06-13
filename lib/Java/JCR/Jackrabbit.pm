package Java::JCR::Jackrabbit;

use strict;
use warnings;

our $VERSION = '0.03';

use Java::JCR;

use base qw( Java::JCR::Base Java::JCR::Repository );

=head1 NAME

Java::JCR::Jackrabbit - Java::JCR connector for Jackrabbit

=head1 SYNOPSIS

  my $repository = Java::JCR::Jackrabbit->new;

  # Or if you'd like to be more specific:
  my $other_repository = Java::JCR::Jackrabbit('other/repository.xml', 'other');

=head1 DESCRIPTION

This is a simple wrapper for C<org.apache.jackrabbit.core.TransientRepository>. This creates a transient Jackrabbit repository using this class. That's about all there is to it. If you need more specific information, please see:

  http://jackrabbit.apache.org/
  http://jackrabbit.apache.org/api-1/org/apache/jackrabbit/core/TransientRepository.html

=cut

use Inline (
    Java => 'STUDY',
    STUDY => [],
);
use Inline::Java qw( study_classes );

study_classes(['org.apache.jackrabbit.core.TransientRepository'], 'Java::JCR');

sub new {
    my $class = shift;

    return bless {
        obj => Java::JCR::org::apache::jackrabbit::core::TransientRepository
                ->new(@_),
    }, $class;
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
