echo "Generating report"
derivedDataDirectory=`cat derivedDataDirectory`
projectFolderPath=`pwd`
projectFolderPath=$(echo $projectFolderPath | sed 's,//,/,g')
echo "Project Path: $projectFolderPath"


# ----------------- Preparing Folders
rm -r -f UnitTestObjects
mkdir UnitTestObjects
cp -r $derivedDataDirectory UnitTestObjects
chmod 0775 UnitTestObjects


rm -r -f Coverage
mkdir Coverage

# ----------------- Execution Commands 

../Tools/gcovr-3.0/scripts/gcovr  --html --html-details -o ./Coverage/coverage.html --root=$projectFolderPath --exclude '.*UnitTestHelper*' --exclude '.*UnitTestClasses*'
cp $projectFolderPath/Coverage/coverage.html $projectFolderPath/coverage.html

open $projectFolderPath/coverage.html