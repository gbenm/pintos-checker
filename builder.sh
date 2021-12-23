#/bin/bash
GRADE=`cat $1`
GRADE="${GRADE//'%'/'%25'}"
GRADE="${GRADE//$'\n'/'%0A'}"
GRADE="${GRADE//$'\r'/'%0D'}"
GRADE="${GRADE//"'"/%27}"
GRADE="${GRADE//'`'/'%60'}"
echo "::set-output name=results::$GRADE"
