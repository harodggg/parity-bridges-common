# Knowledge Sharing Workshop Cheat-Sheet

## 🧠 Knowledge 🧠

TODO

## Live Coding

This is a rough step-by-step guide of what we'll be covering in today's live-coding session. If
anything, it's more just checkpoints that will help us as presenters more than you as an audience
member.


1. Add Millau instance of `pallet-bridge-grandpa` to `template-runtime`
  1. Implement Runtime APIs (May need `bp-template` first)
  2. Add GenesisConfig to chain spec
  3. Make sure Owner is non-Root
1. Add RPC for Justification Subscriptions to `node` service
1. Add Template instance of `pallet-bridge-grandpa` to `millau-runtime`
  1. Implement Runtime APIs
1. Add `init_bridge` implementation to `substrate-relay`
  1. Add `chain-template` crate to primitives
    - `cargo new --lib primitives/chain-template`
  1. Add `client-template` crate to relay
    - `cargo new --lib relays/client-template`
  1. Add `template.rs` module to `bin-substrate/chains`
  1. Add Call construction to `init_bridge` (OK to use runtime directly)
  1. Update scripts to init `MillauToTemplate` and `TemplateToMillau`
  1. NOTE: Looks like Template -> Millau init call isn't working :(
1. Add `relay_headers` implementation to `substrate-relay`
  1. Create `millau_headers_to_template.rs`
  1. Create `template_headers_to_millau.rs`
  1. Add `MillauToTemplate` option to `relay_headers.rs`
  1. Add `TemplateToMillau` option to `relay_headers.rs`
