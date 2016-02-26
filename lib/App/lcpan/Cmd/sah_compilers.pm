package App::lcpan::Cmd::sah_compilers;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

require App::lcpan;

our %SPEC;

$SPEC{handle_cmd} = {
    v => 1.1,
    summary => 'List Data::Sah compilers available on CPAN',
    args => {
        %App::lcpan::common_args,
        %App::lcpan::query_multi_args,
        %App::lcpan::fauthor_args,
        %App::lcpan::fdist_args,
        %App::lcpan::flatest_args,
        %App::lcpan::sort_modules_args,
    },
};
sub handle_cmd {
    my %args = @_;

    my $res = App::lcpan::modules(%args, namespaces=>['Data::Sah::Compiler']);

    # remove Acme::CPANLists itself
    my $filtered = [];
  REC:
    for my $rec (@{$res->[2]}) {
        for ($args{detail} ? $rec->{module} : $rec) {
            s/\AData::Sah::Compiler::// or next REC;
            /\A([^:]::)*[a-z][^:]*\z/ or next REC;
        }
        push @$filtered, $rec;
    }
    $res->[2] = $filtered;
    $res;
}

1;
# ABSTRACT:
