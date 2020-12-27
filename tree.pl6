use v6;

my Int $size = 8;
my Int $baubleProbability = 30;

sub isOrnament() returns Bool {
    100.rand < $baubleProbability
}

sub tile() returns Str {
    if isOrnament() {
        'O'
    } else {
        'x'
    }
}

sub decoratedBranch(Int $branchSize) returns Str {
    map(-> $i { tile() }, 1 .. $branchSize).join('')
}

sub branchLine(Int $i) returns Str {
    " " x ($size - $i) ~ decoratedBranch($i * 2 + 1)
}

my Str $tip = " " x $size ~ "+";
my Str $trunk = " " x ($size - 1) ~ "|||";

say $tip;

for 0 ..^ $size -> $i {
    say branchLine($i);
}

say $trunk;
