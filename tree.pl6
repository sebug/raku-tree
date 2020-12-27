use v6;

my Int $size = 8;
my Str $tip = " " x $size ~ "+";
my Str $trunk = " " x ($size - 1) ~ "|||";


sub branch(Int $i) {
    " " x ($size - $i) ~ "x" x ($i * 2 + 1)
}

say $tip;

for 0 .. ($size - 1) -> $i {
    say branch($i);
}

say $trunk;
