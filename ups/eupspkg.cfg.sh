# EupsPkg config file. Sourced by 'eupspkg'

build()
{
    python2.7 setup.py build
}

install()
{
    clean_old_install
    python2.7 setup.py install --prefix "$PREFIX" --standalone-lib
}
