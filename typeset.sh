# typeset, and do it twice for indexing purposes
jobname=ama_transcript
pdflatex main -interaction nonstopmode -jobname $jobname
    && pdflatex main -interaction nonstopmode -jobname $jobname;
rm $jobname.{aux,toc,log}
