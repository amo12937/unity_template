cd ${0%/*}/unity
rake
RET=$?
cd ..
exit $RET
