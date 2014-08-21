# This program will convert a label file exported by Audacity into
# EPUB 3 compliant <par> SMIL elements suitable for a media overlay
# This script assumes the label file is in the form
#    starttime  endtime ID

# To use this program, use awk on the command line:
#   > awk -f convert.awk -v htmlFile=<path to input html file> -v audioFile=<path to audio file> <input text file> > <output filename>
#
# NOTE: The paths (htmlFile and audioFile)  should be the string that you want it to appear
# in the output SMIL file, _not_ the actual relative or absolute path to the actual files.
# On the other hand, the input text file and the output file name should be actual valid paths.

# For example:
#   > awk -f convert.awk -v htmlFile=01-velocity.html -v audioFile=audio/01-velocity.mp3 01-velocity-timecodes.txt > 01-velocity.smil

# Edit the output to add the smil boilerplate to the document,
# plus any additional <seq> elements, etc. as desired.

/[a-zA-Z]/ \
{print \
"<par id=\"ch1o" NR "\">\
    <text src=\"" htmlFile "#" $3 "\"/>"}

/[0-9]*:*[0-9]*:*[0-9]*\.[0-9]*/ \
{print \
"    <audio src=\"" audioFile "\" clipBegin=\"" $1 "\" clipEnd=\"" $2 "\"/>\
</par>"}
