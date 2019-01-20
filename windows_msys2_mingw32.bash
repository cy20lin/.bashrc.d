if ! ( printenv PATH | grep '/mingw32/local/bin:' )
then
    PATH="/mingw32/local/bin:${PATH}"
    export PATH="${PATH}"
fi
