if [ -s ex1.txt ];
then
   echo "File exists and is not empty"
else
   echo "File does not exist or is null, the pipeline will now stop..."
   logChecker()
fi



def logChecker() {
  Stage('Files have been checked and they are null or missing') {
    catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
      sh "exit 1"
  }
  echo "Must be a valid file"
  }
}

#Variable (Deathchecker to run sh block)
# check if it runs true or not
# -s should return a value
# to fail, 2 lines
# def variable = sh (something....)
#if variable == true (...)