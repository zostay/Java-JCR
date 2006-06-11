package Java::JCR::Jackrabbit;

use strict;
use warnings;

use Java::JCR;

use base qw( Java::JCR::Base Java::JCR::Repository );

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

1
