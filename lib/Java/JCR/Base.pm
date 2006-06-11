package Java::JCR::Base;

use strict;
use warnings;

use Inline::Java qw( cast );
use Scalar::Util qw( blessed );

sub _process_args {
    my @args;
    for my $arg (@_) {
        if (UNIVERSAL::isa($arg, 'Java::JCR::Base')) {
            push @args, $arg->{obj};
        }
        else {
            push @args, $arg;
        }
    }

    return @args; 
}

sub _process_return {
    my $result = shift;
    my $java_package = shift;
    my $perl_package = shift;

    return bless {
        obj => cast($java_package, $result),
    }, $perl_package;
}

1
