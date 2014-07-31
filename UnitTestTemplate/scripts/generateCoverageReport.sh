
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
cd Coverage
mkdir Report
cd ..



# ----------------- Execution Commands 
../Tools/gcovr-3.0/scripts/gcovr  --html --html-details -o ./Coverage/Report/coverage.html --root=$projectFolderPath --exclude '.*UnitTestHelper*' --exclude '.*UnitTestClasses*'
cp $projectFolderPath/Coverage/Report/coverage.html $projectFolderPath/Coverage/coverage.html

open $projectFolderPath/Coverage/Report/coverage.html