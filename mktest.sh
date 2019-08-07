#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <training_set> <test_set>"
    exit 1
fi

OUTPUT_DIR="tests"
mkdir -p "$OUTPUT_DIR" || exit 1

max_id=0
# hence any directory names under tests must be a positive integer
for i in "$OUTPUT_DIR/"*; do
    if [ -e "$i" ]; then
        i="`basename "$i"`"
        if [ "$i" -gt $max_id ]; then
            max_id="$i"
        fi
    fi
done

id=`expr $max_id + 1`
tk="$OUTPUT_DIR/$id"
mkdir -p "$tk" || exit 1

cp "$1" "$tk/trainset.tsv"
cp "$2" "$tk/testset.tsv"
for pgrm in DT_sentiment DT_topics BNB_sentiment BNB_topics MNB_sentiment MNB_topics; do
    pgrm_dir="$tk/$pgrm"
    mkdir -p "$pgrm_dir"
    python3 $pgrm.py "$1" "$2" > "$pgrm_dir/sample_output.txt"
    if [ $? -ne 0 ]; then
        echo "Your program $pgrm.py exits with non-zero status code. This script will terminate"
        rm -rf "$tk"
        exit 1
    fi
done
echo "tests saved in $tk"
