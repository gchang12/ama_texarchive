#!/bin/bash
# TeX-escape pound-sign
#echo "Please escape pound-sign";
#read;
# temporarily alter contents of an exceptional file.
#pound_file=output/ama_text/"Aaron Hammersley"/IWantFries21/answer_text.txt;
#sed -i "s/\\#/\\\\#/" $pound_file;
# generate metadata
cd output/ama_text/;
ls --sort=time --reverse > ../../metadata/content-creators.txt;
# to manually reorder content creator names, if applicable
#vi ../../metadata/content-creators.txt;
cd output/ama_text/;
mkdir filenames;
# generate list of fan names
for cc_name in *; do (
    ls --sort=time --reverse "$cc_name" > filenames/"$cc_name".txt;
); done;
# moving last of metadata to right directory
rm filenames/filenames.txt;
mv filenames ../../metadata/;
cd ../../;
# restore former state of exceptional file.
#sed -i "s/\\\\#/\\#/" $pound_file;
