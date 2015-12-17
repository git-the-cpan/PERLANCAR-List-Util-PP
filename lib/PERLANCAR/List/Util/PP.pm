package PERLANCAR::List::Util::PP;

our $DATE = '2015-12-18'; # DATE
our $VERSION = '0.02'; # VERSION

use 5.010001;
#IFUNBUILT
use strict;
use warnings;
#END IFUNBUILT

use Exporter qw(import);
our @EXPORT_OK = qw(
                       max maxstr min minstr
               );

our @EXPORT_OK_TODO = qw(
    reduce any all none notall
    product sum sum0

    pairs unpairs pairkeys pairvalues pairgrep pairfirst
    pairmap

    shuffle
);

# BEGIN_BLOCK: max
sub max {
    return undef unless @_;
    my $res = $_[0];
    my $i = 0;
    while (++$i < @_) { $res = $_[$i] if $_[$i] > $res }
    $res;
}
# END_BLOCK: max

# BEGIN_BLOCK: maxstr
sub maxstr {
    return undef unless @_;
    my $res = $_[0];
    my $i = 0;
    while (++$i < @_) { $res = $_[$i] if $_[$i] gt $res }
    $res;
}
# END_BLOCK: maxstr

# BEGIN_BLOCK: min
sub min {
    return undef unless @_;
    my $res = $_[0];
    my $i = 0;
    while (++$i < @_) { $res = $_[$i] if $_[$i] < $res }
    $res;
}
# END_BLOCK: min

# BEGIN_BLOCK: minstr
sub minstr {
    return undef unless @_;
    my $res = $_[0];
    my $i = 0;
    while (++$i < @_) { $res = $_[$i] if $_[$i] lt $res }
    $res;
}
# END_BLOCK: minstr

1;
# ABSTRACT: Pure-perl implementation of List::Util

__END__

=pod

=encoding UTF-8

=head1 NAME

PERLANCAR::List::Util::PP - Pure-perl implementation of List::Util

=head1 VERSION

This document describes version 0.02 of PERLANCAR::List::Util::PP (from Perl distribution PERLANCAR-List-Util-PP), released on 2015-12-18.

=head1 SYNOPSIS

 use PERLANCAR::List::Util::PP qw(max min maxstr minstr);

 my $max = max @list;
 my $min = min @list;

=head1 DESCRIPTION

B<NOTE: EARLY RELEASE, NOT ALL FUNCTIONS HAVE BEEN IMPLEMENTED>

Most of the time you will not need this module. Use L<List::Util> instead. This
module is useful for testing/benchmarking, or perhaps in the rare case where you
cannot use any XS module (even core ones) or in the rare case where you cannot
use I<any> module, in which case you can copy-and-paste the routines from this
module (or, if you use L<Dist::Zilla>, you can also use
L<Dist::Zilla::Plugin::InsertBlock>).

L<List::Util::PP> was also available as part of Scalar-List-Utils but was
dropped (it was still included as part of perl 5.16). I plan to incorporate
(at least some) code from the old code base [2].

=head1 FUNCTIONS

For more details on each function, see List::Util.

=head2 reduce

TBD

=head2 any

TBD

=head2 all

TBD

=head2 none

TBD

=head2 notall

TBD

=head2 first

TBD

=head2 max

=head2 maxstr

=head2 min

=head2 minstr

=head2 product

TBD

=head2 sum

TBD

=head2 sum0

TBD

=head2 pairs

TBD

=head2 unpairs

TBD

=head2 pairkeys

TBD

=head2 pairvalues

TBD

=head2 pairgrep

TBD

=head2 pairfirst

TBD

=head2 pairmap

TBD

=head2 shuffle

TBD

=head1 SEE ALSO

[1] L<List::Util>

[2] L<https://github.com/haarg/List-Util/blob/pp/lib/List/Util/PP.pm>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/PERLANCAR-List-Util-PP>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-PERLANCAR-List-Util-PP>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=PERLANCAR-List-Util-PP>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
