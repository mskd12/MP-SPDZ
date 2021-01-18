#!/usr/bin/env bash

ORIG=$(pwd)
HERE=$(cd `dirname $0`; pwd)
SPDZROOT=$HERE/..
cd $SPDZROOT

. $HERE/run-common.sh

port=18649
bin=spdz2k-party.x

params="$1 gf_mul -pn $port -h localhost -N $2"

>&2 echo Running $SPDZROOT/$bin $params

$prefix $SPDZROOT/$bin $params