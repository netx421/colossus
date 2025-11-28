COLOSSUS — Telehack Terminal Subsystem
Fast • Secure • Post-Quantum Ready • Retro-Hardened Terminal Emulator

COLOSSUS is a hardened, amber-phosphor, Telehack-optimized fork of Alacritty, rebuilt for:

extreme speed

retro 1970s terminal aesthetics

post-quantum PQ-SSH authentication

zero bloat

stable GPU-accelerated rendering

instant Telehack login via login <username>

full COLOSSUS boot banner on launch

This is the terminal emulator the Colossus mainframe itself would deploy.

✨ Features
🟡 Amber CRT Theme

Vintage phosphor-monitor look

Crisp monochrome text

Perfect for Telehack immersion

⚡ Performance

Based on Alacritty’s ultra-fast Rust/OpenGL core

Low memory use

No tabs or UI chrome — pure terminal

🔐 Post-Quantum Telehack Login

Includes a wrapper that enables:

login <username>


which runs:

pq-ssh -p 2222 <username>@telehack.com

🖥️ Retro COLOSSUS Boot Banner

Every new session shows:

System initialization

PQ-SSH subsystem online

Nuclear link status

Authority override channel

Pure 1970s terminal authenticity.

🔧 Self-Contained Configuration

COLOSSUS automatically installs:

~/.config/colossus/colossus.toml


and integrates all scripts from this repo.

🚀 Installation
1. Clone the repository
git clone https://github.com/netx421/colossus.git
cd colossus

2. Build COLOSSUS

You need Rust installed:

cargo build --release

3. Launch COLOSSUS

Use the launcher so banners + RC integration work correctly:

./scripts/colossus


On first launch, COLOSSUS creates:

~/.config/colossus/colossus.toml

🔑 Telehack Login Shortcut

Inside COLOSSUS:

login yourusername


Automatically connects using post-quantum SSH:

pq-ssh -p 2222 yourusername@telehack.com

📁 File Structure
colossus/
 ├── target/release/colossus        ← binary (after build)
 ├── scripts/
 │    ├── colossus                  ← launcher
 │    ├── colossus-banner           ← boot banner
 │    ├── colossus-pq-ssh           ← PQ-SSH Telehack wrapper
 │    └── colossus-rc.sh            ← session initialization
 ├── preset/
 │    └── colossus.toml             ← default config (amber CRT)
 ├── colossus_terminal/             ← rendering backend
 ├── colossus_config/               ← config handling
 ├── Cargo.toml
 ├── Makefile
 └── README.md

🧪 Developer Mode

Run COLOSSUS from the repo without installing:

./scripts/colossus --config-file preset/colossus.toml

📜 License

COLOSSUS is dual-licensed under:

Apache-2.0

MIT

Original COLOSSUS scripts and assets © 2025 WillTech / netx421.

🤖 Acknowledgements

Built on the Alacritty terminal engine

Enhanced and themed for the Telehack community

Inspired by retro defense-network terminals of the 1970s

🛰️ Project Status — v0.1

Functional. Stable. Fully themed. Telehack-ready.

Planned additions:

CRT scanline shader

Key-click + teletype noise emulation

COLOSSUS network-activity indicator lights

Optional darker “WOPR Mode”

Binary release packages for Linux/Mac/Windows
