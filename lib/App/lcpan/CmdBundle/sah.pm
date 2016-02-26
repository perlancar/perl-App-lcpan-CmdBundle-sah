package App::lcpan::CmdBundle::sah;

# DATE
# VERSION

1;
# ABSTRACT: lcpan subcommands related to Data::Sah

=head1 SYNOPSIS

Install this distribution, then the lcpan subcommands below will be available:

 # List Data::Sah types available on CPAN
 % lcpan sah-types

 # List Data::Sah compilers available on CPAN
 % lcpan sah-compilers


=head1 DESCRIPTION

This distribution packages several lcpan subcommands related to
L<Data::Sah>. More subcommands will be added in future releases.

Some ideas:

For each compiler, show list of (un)supported types (the ones it has (doesn't
have) the handler for).

List supported translation languages (Data::Sah::Lang::*).


=head1 SEE ALSO

L<lcpan>

L<Data::Sah>
