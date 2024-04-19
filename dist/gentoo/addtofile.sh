SRC_URI+="https://gitlab.devinlittle.net/devinlittle/amazingpacking"

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
}
