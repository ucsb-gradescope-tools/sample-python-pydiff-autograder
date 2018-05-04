import unittest
import os
import sys
from gradescope_utils.autograder_utils.json_test_runner import JSONTestRunner

if __name__ == '__main__':
    submission_dir = "/autograder/submission"
    if (len(sys.argv) > 1):
        submission_dir = sys.argv[1]

    if os.path.exists(submission_dir):
        os.chdir(submission_dir)
    else:
        print("Error: No %s directory!" % submission_dir)
        sys.exit()

    suite = unittest.defaultTestLoader.discover('tests')
    JSONTestRunner(visibility='visible').run(suite)