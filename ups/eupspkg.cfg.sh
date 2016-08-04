# EupsPkg config file. Sourced by 'eupspkg'

build()
{
    python2.7 setup.py build
}

install()
{
    clean_old_install
    python2.7 setup.py install --prefix "$PREFIX" --standalone-lib

    # Install ups if the native build system hasn't done it already.
    # These lines come from the default install function in eupspkg
    if [[ -d "ups" && ! -d "$PREFIX/ups" ]]; then
        install_ups
    fi
}
