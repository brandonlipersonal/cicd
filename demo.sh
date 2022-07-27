echo "Hello this is Brandon's file"
echo "I just made some changes 7/26"

#file --mime-type * -F$'\t' | awk -F'\t *' '$2 ~/^text\/plain/ { print $1 }'
# file --mime-type * -F$'\t' = Determines file type of each file in the current folder (*) and prints two-column list (file name ---- MIME type)
# awk -F'\t *' '$2 ~/^text\/plain/ { print $1 }' = Parses each line into filename and MIME type

#if [[ $(file -b --mime-type "$file") == 'text/plain'* ]]
#then
#    echo "Found log file"
#else
#    echo "Not found"
#fi

# -f return true if file exists and regular file

if [ -f ex1.txt ];
then
    echo "File exists"
else
    echo "File does not exist"
fi