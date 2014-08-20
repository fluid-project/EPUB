# This program will convert a label file exported by Audacity into
# EPUB 3 compliant <par> SMIL elements suitable for a media overlay
# This script assumes the label file is in the form
#    starttime  endtime ID

# To use this program, use awk on the command line:
# > awk -f convert.awk input.txt >output.smil
# and then add the smil boilerplate to the document,
# and any additional <seq> elements, etc. as desired.

/[a-zA-Z]/ \
{print \
"<par id=\"ch1o" NR "\">\
    <text src=\"01-velocity.html#" $3 "\"/>"}

# Doesn't work:
#{printf \
#"<par id=\"ch1o" %n "\">\
#    <text src=\"01-velocity.html#" %s "\"/>", NR, $3}


/[0-9]*:*[0-9]*:*[0-9]*\.[0-9]*/ \
{print \
"    <audio src=\"audio/01-velocity.mp4\" clipBegin=\"" $1 "\" clipEnd=\"" $2 "\"/>\
</par>"}
