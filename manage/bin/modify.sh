#!/bin/bash

nammod=${1}

pthtop="$(cd "$(dirname "${0}")/../../../.." && pwd)"
source "${pthtop}"/manage/lib/params.sh
source "${pthtop}"/manage/lib/shared.sh
source "${pthcrr}"/params.sh

if test ${nammod} = 'cnf001'
then
  pthcnf="${pthsrc}"/export/cnf/xoxxox
  pthopt="${pthsrc}"/export_option-${nammod}
  cnfopt="${pthopt}"/cnf/xoxxox/docker_srvcll_custom.yml

  cpytgt "${cnfopt}" "${pthcnf}"
fi
