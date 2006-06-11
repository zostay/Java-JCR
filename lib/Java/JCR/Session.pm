package Java::JCR::Session;

# This code was automatically generated by a combination of the
# JCRPackageGenerator.java and package-generator.pl programs. These are both
# distributed in the inc/ directory of the Java-JCR distribution. You should
# be able to find the latest Java-JCR distribution at:
#
#   http://search.cpan.org/~hanenkamp/Java-JCR/
#

use strict;
use warnings;

use base qw( Java::JCR::Base );

use Inline (
    Java => 'STUDY',
    STUDY => [],
);
use Inline::Java qw( study_classes );

study_classes(['javax.jcr.Session'], 'Java::JCR');

sub move {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->move(@args);
    return $result;
}

sub get_attribute {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getAttribute(@args);
    return $result;
}

sub get_import_content_handler {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getImportContentHandler(@args);
    return $result;
}

sub import_xml {
    my $self = shift;
    my $path = shift;
    my $handle = shift;
    my $behavior = shift;

    my $input_stream = Java::JCR::JavaUtils::input_stream($handle);

    $self->{obj}->importXML($path, $input_stream, $behavior);
}
        

sub remove_lock_token {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->removeLockToken(@args);
    return $result;
}

sub is_live {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->isLive(@args);
    return $result;
}

sub get_namespace_prefix {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getNamespacePrefix(@args);
    return $result;
}

sub add_lock_token {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->addLockToken(@args);
    return $result;
}

sub save {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->save(@args);
    return $result;
}

sub get_namespace_prefixes {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getNamespacePrefixes(@args);
    return $result;
}

sub item_exists {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->itemExists(@args);
    return $result;
}

sub refresh {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->refresh(@args);
    return $result;
}

sub get_node_by_uuid {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getNodeByUUID(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Node", "Java::JCR::Node");
}

sub get_user_id {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getUserID(@args);
    return $result;
}

sub get_attribute_names {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getAttributeNames(@args);
    return $result;
}

sub logout {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->logout(@args);
    return $result;
}

sub get_namespace_uri {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getNamespaceURI(@args);
    return $result;
}

sub get_workspace {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getWorkspace(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Workspace", "Java::JCR::Workspace");
}

sub get_repository {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getRepository(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Repository", "Java::JCR::Repository");
}

sub get_lock_tokens {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getLockTokens(@args);
    return $result;
}

sub has_pending_changes {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->hasPendingChanges(@args);
    return $result;
}

sub export_system_view {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->exportSystemView(@args);
    return $result;
}

sub get_item {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getItem(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Item", "Java::JCR::Item");
}

sub get_root_node {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getRootNode(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Node", "Java::JCR::Node");
}

sub set_namespace_prefix {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->setNamespacePrefix(@args);
    return $result;
}

sub impersonate {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->impersonate(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.Session", "Java::JCR::Session");
}

sub get_value_factory {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->getValueFactory(@args);
    return Java::JCR::Base::_process_return($result, "javax.jcr.ValueFactory", "Java::JCR::ValueFactory");
}

sub export_document_view {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->exportDocumentView(@args);
    return $result;
}

sub check_permission {
    my $self = shift;
    my @args = Java::JCR::Base::_process_args(@_);
    my $result = $self->{obj}->checkPermission(@args);
    return $result;
}

1;
__END__

=head1 NAME

Java::JCR::Session - Perl wrapper for javax.jcr.Session

=head1 DESCRIPTION

This is an automatically generated package wrapping javax.jcr.Session with a nice Perlish API.

For full documentation of what this class does, see the Java API documentation: L<http://www.day.com/maven/jsr170/javadocs/jcr-1.0/javax/jcr/Session.html>

The deviations from the API documentation include the following:

=over

=item *

You will need to use Perl, intead of Java, to make any use of this API. (Duh.)

=item *

The package to use is L<Java::JCR::Session>, rather than I<javax.jcr.Session>.

=item *

All method names have been changed from Java-style C<camelCase()> to Perl-style C<lower_case()>. 

Thus, if the function were named C<getName()> in the Java API, it will be named C<get_name()> in this API. As another example, C<nextEventListener()> in the Java API will be C<next_event_listener()> in this API.

=back

=head1 SEE ALSO

L<Java::JCR>, L<http://www.day.com/maven/jsr170/javadocs/jcr-1.0/javax/jcr/Session.html>

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

