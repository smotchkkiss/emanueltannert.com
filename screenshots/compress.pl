#!/usr/bin/env perl

use File::Basename;

for $png (<*.png>) {
    $base = fileparse($png, '.png');
    system(
        'magick',
        $png,
        '-resize', (672*2).'x'.(426*2),
        '-strip',
        '-quality', '86',
        "$base.webp"
    );
}
