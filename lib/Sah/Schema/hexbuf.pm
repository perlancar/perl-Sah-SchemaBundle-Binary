package Sah::Schema::hexbuf;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Binary data encoded in hexdigits, e.g. "fafafa" or "ca fe 00"',
    match => qr/\A([0-9A-fa-f][0-9A-fa-f])*\z/,

    prefilters => ['Str::remove_whitespace'],

    description => <<'_',

Whitespaces are allowed and will be removed.

Note: that this schema does not decode the hex encoding for you.

Note: if you add clauses like `leng`, `min_len`, `max_len`

_

    examples => [
        {value=>'', valid=>1},
        {value=>'f', valid=>0, summary=>'Odd number of digits'},
        {value=>'fafafa', valid=>1},
        {value=>'FAFAFA', valid=>1, summary=>'Uppercase digits are allowed, not coerced to lowercase'},
        {value=>'fa fa  fa', valid=>1, summary=>'Whitespaces allowed, will be removed', validated_value=>'fafafa'},
        {value=>'fafafg', valid=>0},
    ],
    links => [
        {url=>'pm:Types::XSD', summary=>"Equivalent Type::Tiny constraints: HexBinary (doesn't allow whitespace; length, minLength, maxLength params checks the /decoded/ length)"},
    ],
}];

1;

# ABSTRACT:
