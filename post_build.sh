cd ${0%/*}/unity
rake --trace
RET=$?
cd ..
exit $RET
