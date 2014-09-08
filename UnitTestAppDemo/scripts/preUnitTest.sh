rm -f derivedDataDirectory
rm -r -f Coverage
rm -r -f coverage.html
rm -r -f UnitTestObjects


echo "${OBJECT_FILE_DIR_normal}/${CURRENT_ARCH}" > ${PROJECT_DIR}/derivedDataDirectory
rm -r -f "${OBJECT_FILE_DIR}"