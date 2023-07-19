#!/usr/bin/env bash
# Is the current user authenticated? This tests the

echo -n "Are you authenticated... "

# Do both ~/.netrc and ~/.dodsrc exist? If not, exit with a failure
test -f ~/.netrc -a -f ~/.dodsrc || (echo "no."; exit 1)

# Does the ~/.dodsrc file contain the needed configuration information?
# if not, exit with a failure
grep HTTP\.NETRC ~/.dodsrc > /dev/null || (echo "no."; exit 1)

# Does the ~/.netrc contain an entry for Earthdata login? Since we don't
# know the EDL username, assume any entry for urs.earthdata.nasa.gov is
# a valid entry for this user. If the entry does not exist, fail.
grep urs\.earthdata\.nasa\.gov ~/.netrc > /dev/null || (echo "no."; exit 1)

# If we got here, we're authenticated as far as this script is concerned.
echo "yes."
exit 0
