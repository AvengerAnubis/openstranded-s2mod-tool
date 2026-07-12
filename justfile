# ── OpenStranded s2mod-tool — just build recipes ──────────────────────
#
# Usage:
#   just build          Build the tool
#   just convert DIR    Convert Stranded II installation at DIR
#   just test           Run tests
#   just clean          cargo clean

build:
    cargo build --release

convert DIR:
    cargo run --release -- --input {{DIR}} --output output --dir

test:
    cargo test

clean:
    cargo clean

default:
    @just --list
