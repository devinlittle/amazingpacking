### packge to debian
```sh
cargo deb --release # --target=someTarget
```

### package to arch
```sh
updpkgsums # part of `pacman-contrib` package
makepkg -si
```

### package to void
```sh
./xbps-src pkg amazingpackage
```

### package to gentoo
```sh
pycargoebuild ./ 
```
