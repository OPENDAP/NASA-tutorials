#!/usr/bin/env bash
# Here is a shell command that will create/update your .dodsrc file
# but only if it does not already exist and/or lacks a HTTP.NETRC entry
echo "Your HOME directory is: $HOME"
edit_dodsrc=no

if test -f ~/.dodsrc
then
echo -n "Found an existing ~/.dodsrc file"
    if grep HTTP\.NETRC ~/.dodsrc > /dev/null
    then
    echo "... and it has HTTP.NETRC set"
    else
    echo "... but HTTP.NETRC is not set"
    edit_dodsrc=yes
    fi
else
echo "No ~/.dodsrc file"
edit_dodsrc=yes
fi

if test $edit_dodsrc = "yes"
then
echo "HTTP.NETRC=$HOME/.netrc" >> ~/.dodsrc
echo "HTTP.COOKIEJAR=$HOME/.dapcookies" >> ~/.dodsrc
echo "Modified ~/.dodsrc"
else
echo "The ~/.dodsrc file was not modified"
fi
