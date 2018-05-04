if [ "$#" -eq 1 ]; then
    SUBMISSION_SOURCE=`pwd`/$1
else
    SUBMISSION_SOURCE=/autograder/submission
fi

python3 make_reference.py
python3 grade.py $SUBMISSION_SOURCE