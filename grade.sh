if [ "$#" -eq 1 ]; then
    SUBMISSION_SOURCE=`pwd`/$1
else
    SUBMISSION_SOURCE=/autograder/submission
fi

rm -f results.json

python3 make_reference.py
python3 grade.py $SUBMISSION_SOURCE > results.json

if [ -d /autograder/results ]; then
    cp -v results.json /autograder/results
fi