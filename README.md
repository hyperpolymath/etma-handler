# OU eTMA File Handler

Open University eTMA (electronic Tutor-Marked Assignment) handler for tutors.

## Quick Start

**Double-click to run:**
```
./file-handler.sh
```

Or install the desktop launcher:
```
./install.sh
```

## What's What

| File/Folder | Purpose |
|-------------|---------|
| `file-handler.sh` | **Main launcher** - run this |
| `install.sh` | Creates desktop shortcut |
| `browser-auth-workaround.sh` | Use if login fails (opens browser first) |
| `modernized/` | Updated Java 25 + Jakarta EE version |
| `dist/` | Legacy version (old Java) |
| `etmaDictionary.dic` | Spell checker dictionary |

## Troubleshooting

### "Login failed" or SAML errors
Run `./browser-auth-workaround.sh` - this opens the browser to authenticate first, then launches the app.

### Java not found
Ensure Java is installed. The handler uses:
1. asdf-managed Temurin 25 (preferred)
2. Bundled JRE in `dist/jre/` (fallback)

### Window doesn't appear
Check if already running: `pgrep -f etmaHandler`

## Files You Can Ignore

| File | Notes |
|------|-------|
| `wmctrl` | Window control binary (used internally) |
| `etmaHandlerJ/` | Decompiled source (for reference) |
| `Installer/` | Old installer scripts |
| `*.pdf`, `*.rtf` | Legacy documentation |
