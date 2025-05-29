#!/usr/bin/env bash
cd /opt/readymade
cargo build --release
cp target/release/readymade /usr/local/bin/readymade
