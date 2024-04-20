### packge to Debian
#### Requirements:
* Pandoc
* rust (through rustup)
* cargo-deb

```bash
./dist/debian/packageDeb.sh
```

### package to Arch Linux
```bash
updpkgsums # part of `pacman-contrib` package
makepkg -si
```

### package to Void Linux
```bash
./xbps-src pkg amazingpackage
```

### package to Gentoo Linux
Read gentoo readme in `dist/gentoo/README`
