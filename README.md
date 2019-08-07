# comp3411-ass2-tests
**COMP3411 19T2 assignment 2 (UNSW)**  

This repository contains some scripts to compare the outputs of standard models. **Please note that my implementations are not necessarily correct. They might be slightly wrong, might have major issues, or might be entirely wrong**

## Usage
1. Download this repository and then copy compare_result.sh to your assignment 2 directory.  
2. Copy comp3411-ass2-tests.zip using a **CSE machile** (we are not allowed to make the dataset public):  
cp ~z5137425/public/comp3411-ass2-tests.zip <your_ass2_dir>  
3. unzip the archive: unzip comp3411-ass2-tests.zip
2. run: bash compare_result.sh  

## Results
- For each test it only shows **how many lines** produced by your programs are **different** from my outputs.  
- The very last line printed by this script would be a summary on how many lines different.

## My Outputs
- Train on training set (first 1500) and test on test set (last 500)
- Train and test on training set
- Train on full dataset and test on test set

## Make your own tests
- Run: bash mktest.sh <training_set> <test_set> to make your own tests. Before doing this you might want to remove all of my tests

## Issues
- If you encounter any issues/bugs, please open a github issue or post on the form or email me (email address hidden in git log). We don't have much time now. So focusing on our report would be better.
