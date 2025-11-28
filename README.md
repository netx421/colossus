COLOSSUS — Telehack Terminal Subsystem
Fast • Secure • Post-Quantum Ready • Retro-Hardened Terminal Emulator
 ██████╗ ██████╗ ██╗      ██████╗ ███████╗███████╗██╗   ██╗███████╗
██╔════╝██╔═══██╗██║     ██╔═══██╗██╔════╝██╔════╝██║   ██║██╔════╝
██║     ██║   ██║██║     ██║   ██║███████╗███████╗██║   ██║███████╗
██║     ██║   ██║██║     ██║   ██║╚════██║╚════██║██║   ██║╚════██║
╚██████╗╚██████╔╝███████╗╚██████╔╝███████║███████║╚██████╔╝███████║
 ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝ ╚══════╝


COLOSSUS is a hardened, amber-phosphor, Telehack-optimized fork of Alacritty, rebuilt for:

maximum speed

retro-terminal authenticity

stability + simplicity

post-quantum PQ-SSH authentication

full offline config via preset colossus.toml

instant Telehack login with the login command

immersive COLOSSUS boot banner every session

This is the terminal emulator the Colossus mainframe itself would ship.

✨ Features
🟡 Amber CRT Theme

Authentic 1970s/early-80s monochrome terminal styling

Uniform color palette, crisp amber text, black-void background

⚡ Fast & GPU-Accelerated

Built on Alacritty’s lightning-fast Rust/OpenGL engine

Zero bloat, minimal memory footprint

No tabs, splits, or GUI chrome — pure terminal

🔐 Post-Quantum Secure Telehack Login

A built-in wrapper (colossus-pq-ssh) enables:

login <username>


which runs:

pq-ssh -p 2222 <username>@telehack.com


No more typing the full PQ-SSH command.

🖥️ Retro Boot Banner

Every new COLOSSUS session displays:

The COLOSSUS system banner

Nuclear subsystem status

PQ-SSH readiness

AUTHORITY override channel status

🔧 Self-contained Config

The repo includes:

preset/colossus.toml
scripts/colossus-banner
scripts/colossus-rc.sh
scripts/colossus-pq-ssh
scripts/colossus


All auto-installed on first launch.

🚀 Installation
1. Clone the repo
git clone https://github.com/netx421/colossus.git
cd colossus

2. Build COLOSSUS

Requires Rust:

cargo build --release

3. Use the launcher

Launch COLOSSUS through its script to ensure all banner & RC integrations work:

./scripts/colossus


On first run, it will automatically install:

~/.config/colossus/colossus.toml

🔑 Telehack Login

Once inside COLOSSUS:

login yourusername


This uses pq-ssh at port 2222 automatically.

📁 File Structure
colossus/
 ├── colossus                 ← binary (after build)
 ├── scripts/
 │    ├── colossus            ← launcher
 │    ├── colossus-banner     ← retro boot banner
 │    ├── colossus-pq-ssh     ← Telehack PQ-SSH wrapper
 │    └── colossus-rc.sh      ← RC init for theme + banner
 ├── preset/
 │    └── colossus.toml       ← default config
 ├── colossus_terminal/       ← backend rendering engine
 ├── colossus_config/         ← config parser
 └── Makefile / Cargo.toml

🧪 Developer Mode

Run from the repo without installing:

./scripts/colossus --config-file preset/colossus.toml

📜 License

COLOSSUS is distributed under the same dual license as Alacritty:

Apache 2.0

MIT

All original COLOSSUS scripts and preset files are © 2025 WillTech / netx421.

🤖 Acknowledgements

Built on Alacritty, the fastest GPU terminal emulator in the world

Enhanced for the Telehack community

Designed for maximum performance, minimalism, and retro computing authenticity

🛰️ Project Status

COLOSSUS v0.1 — Functional, stable, retro-themed, Telehack-ready.
