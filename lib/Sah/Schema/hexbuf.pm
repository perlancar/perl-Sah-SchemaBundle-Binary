package Sah::Schema::hexbuf;

# DATE
# VERSION

our $schema => [str => {
    summary => 'Binary data encoded in hexdigits',
    match => qr/\A[0-9A-fa-f]+\z/,
}, {}];

1;

# ABSTRACT:
