function _add_path()
{
    if [ -d $1 ]; then
        export PATH=$1:$PATH
    fi
}
