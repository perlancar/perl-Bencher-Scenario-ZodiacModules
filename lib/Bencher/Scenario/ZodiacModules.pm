package Bencher::Scenario::ZodiacModules;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    participants => [
        {
            fcall_template => "Zodiac::Tiny::zodiac_of('2015-11-29')",
        },
        {
            fcall_template => "DateTime::Event::Zodiac::zodiac_date_name(DateTime->new(year=>2015, month=>11, day=>29))",
        },
        {
            fcall_template => "Zodiac::Chinese::Table::chinese_zodiac('2015-11-28')",
        },
        {
            fcall_template => "Zodiac::Chinese::chinese_zodiac(2015,11)",
        },
    ],
    datasets => [
    ],
};

1;
# ABSTRACT: Benchmark various zodiac modules

=head1 SYNOPSIS

 % bencher -m ZodiacModules [other options]...
