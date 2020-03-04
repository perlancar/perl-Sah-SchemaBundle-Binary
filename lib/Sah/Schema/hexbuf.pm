package Sah::Schema::hexbuf;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Binary data encoded in hexdigits',
    match => qr/\A([0-9A-fa-f][0-9A-fa-f])*\z/,
    examples => [
        {value=>'', valid=>1},
        {value=>'f', valid=>0, summary=>'Odd number of digits'},
        {value=>'fafafa', valid=>1},
        {value=>'fafafg', valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
