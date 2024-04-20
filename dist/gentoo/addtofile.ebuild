BDEPEND="virtual/pandoc"
SRC_URI+="https://gitlab.devinlittle.net/devinlittle/amazingpacking/-/archive/master/amazingpacking-master.tar.gz"


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
  
  pandoc --standalone -f markdown -t man ./res/amazingpacking.1.md > amazingpacking.1 
  doman ./amazingpacking.1
}
