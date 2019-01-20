if ! ( printenv PATH | grep '/mingw64/local/bin:' )
then
    PATH="/mingw64/local/bin:${PATH}"
    export PATH="${PATH}"
fi