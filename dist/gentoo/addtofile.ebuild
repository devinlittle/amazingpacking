BDEPEND="virtual/pandoc"
SRC_URI+="https://github.com/devinlittle/amazingpacking/archive/refs/heads/master.zip"

src_prepare() {
  default

  echo "$(pwd)"
  cp -r ../amazingpacking-master/* . || die
}

src_configure() {
  echo $(pwd)
  cargo_src_configure --frozen
}

src_install() {
  cargo_src_install

  pandoc --standalone -f markdown -t man ./res/amazingpacking.1.md >amazingpacking.1
  doman ./amazingpacking.1
}
