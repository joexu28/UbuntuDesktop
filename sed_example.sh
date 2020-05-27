#!/bin/bash

sed 's/searchstring/replacestring/' filename      # output to the screen not replacing the original file
sed 's/searchstring/replacestring/gw newfilename' filename    # replace and write to a newfilename
sed -i.bak 's/searchstring/replacestring/' filename       #create a backup file .bak before inline replacement
sed 's/searchstring/replace string/2' filename > newfilename    # replace 2nd occurance of the string and output to newfilename
sed 's/search string/replace string/i' filename     # ignore upper/lower case
cat filename | sed 's/search string/replace string/g'    # same as example 1
echo '/home/joe' | sed 's/\/home\/joe/\/export\/users\/joe/'   # escape with \
echo '/home/joe' | sed 's#/home/joe#/export/users/joe#'        # use # instead of / as the delimiter
sed '/search string/d' filename                                # delete the line matching search string
sed '/^#/d' filename                                           # delete the line starting with # (comments)
sed '/^$/d' filename	       # delete blank line (starting character immediately followed by ending character
sed '/^#/d; /^$/d' filename    # combine patterns.  
sed '/^#/d; /^$/d; s/apache/httpd/' httpd.conf      # combine 3 operations
sed -e '/^#/d' -e '/^$/d' -e 's/apache/httpd/' httpd.conf      # combine 3 operations with -e
sed -f script.sed httpd.conf            # using a file containing all the sed operations
# script.sed contains
#/^#/d
#/^$/d
#s/apache/httpd/
sed '2 s/apache/httpd/'  config         # only replace the 2nd line 
sed '/Group/ s/apache/httpd/' config    # only replace the line containing Group
sed '1,4 s/run/execute/' config         # replace on 1st and 4th lines
