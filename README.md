### packge to debian
```sh
cargo deb --release # --target=someTarget
```

### package to arch
```sh
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
