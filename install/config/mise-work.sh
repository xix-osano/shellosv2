# Add ./bin to path for all items in ~/Projects
mkdir -p "$HOME/Projects"

cat >"$HOME/Projects/.mise.toml" <<'EOF'
[env]
_.path = "{{ cwd }}/bin"
EOF

mise trust ~/Projects/.mise.toml

mise use -g node@latest
