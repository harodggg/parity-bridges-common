# Knowledge Sharing Workshop Cheat-Sheet

This is a rough step-by-step guide of what we'll be covering in today's live-coding session. If
anything, it's more just checkpoints that will help us as presenters more than you as an audience
member.

1. Add Millau instance of `pallet-bridge-grandpa` to `bridge-runtime`
1. Add Template instance of `pallet-bridge-grandpa` to `millau-runtime`
1. Add `init_bridge` implementation to `substrate-relay`
  1. Add `chain-template` crate to primitives
    - `cargo new --lib primitives/chain-template`
  3. Add `client-template` crate to relay
    - `cargo new --lib relays/client-template`
  4. Add `template.rs` module to `bin-substrate/chains`
  5. Add Call construction to `init_bridge` (OK to use runtime directly)
1. Add `relay_headers` implementation to `substrate-relay`
