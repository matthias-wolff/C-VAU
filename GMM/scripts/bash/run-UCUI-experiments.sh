#!/bin/bash
# Batch execution of Peter's VAU experiments for UCUI

DUMP=-Pdump=all
LOGDIR=GMM/eval/UCUI

cd $UASR_HOME-data/vau/GMM
mkdir -p eval/UCUI

cd $UASR_HOME-data/vau
DB.xtp pfv common/info/featureanalysis.cfg
DB.xtp sfv common/info/featureanalysis.cfg
HMM.xtp trn GMM/info/UCUI/e21/ucui_e21_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_21_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e22/ucui_e22_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_22_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e23/ucui_e23_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_23_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e24/ucui_e24_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_24_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e21/ucui_e21_sfv_24.cfg -v2 $DUMP &> $LOGDIR/eval_21_sfv_24.txt &
HMM.xtp trn GMM/info/UCUI/e22/ucui_e22_sfv_24.cfg -v2 $DUMP &> $LOGDIR/eval_22_sfv_24.txt &
HMM.xtp trn GMM/info/UCUI/e23/ucui_e23_sfv_24.cfg -v2 $DUMP &> $LOGDIR/eval_23_sfv_24.txt &
HMM.xtp trn GMM/info/UCUI/e24/ucui_e24_sfv_24.cfg -v2 $DUMP &> $LOGDIR/eval_24_sfv_24.txt &

cd $UASR_HOME-data/vau/common/scripts/dlabpro
VAU_VM_DB.xtp pfv $UASR_HOME-data/vau/common/info/ucui_vm_featureanalysis.cfg
cd $UASR_HOME-data/vau
HMM.xtp trn GMM/info/UCUI/e11/ucui_e11_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_11_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e12/ucui_e12_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_12_pfv_30.txt &
HMM.xtp trn GMM/info/UCUI/e13/ucui_e13_pfv_30.cfg -v2 $DUMP &> $LOGDIR/eval_13_pfv_30.txt &

## EOF