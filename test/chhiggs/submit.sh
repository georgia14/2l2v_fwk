#!/bin/bash

#JSONFILE=$CMSSW_BASE/src/UserCode/llvv_fwk/data/chhiggs/phys14_test.json
JSONFILE=$CMSSW_BASE/src/UserCode/llvv_fwk/data/chhiggs/phys14_ttbar.json
OUTDIR=$CMSSW_BASE/src/UserCode/llvv_fwk/test/chhiggs/results_ttbar2

mkdir -p ${OUTDIR}

runLocalAnalysisOverSamples.py -e runChHiggsAnalysis -j ${JSONFILE} -o ${OUTDIR} -d  /dummy/ -c $CMSSW_BASE/src/UserCode/llvv_fwk/test/runAnalysis_cfg.py.templ -p "@useMVA=False @saveSummaryTree=False @runSystematics=False @automaticSwitch=False @is2011=False @jacknife=0 @jacks=0" -s 8nh

#runLocalAnalysisOverSamples.py -e runChHiggsAnalysis -j $CMSSW_BASE/src/UserCode/llvv_fwk/data/chhiggs/phys14_samples.json -o $CMSSW_BASE/src/UserCode/llvv_fwk/test/chhiggs/results_nonexclusive -d  /dummy/ -c $CMSSW_BASE/src/UserCode/llvv_fwk/test/runAnalysis_cfg.py.templ -p "@useMVA=False @saveSummaryTree=False @runSystematics=False @automaticSwitch=False @is2011=False @jacknife=0 @jacks=0" -s 8nh

#runLocalAnalysisOverSamples.py -e runChHiggsAnalysis -j $CMSSW_BASE/src/UserCode/llvv_fwk/data/chhiggs/phys14_ttbar.json -o $CMSSW_BASE/src/UserCode/llvv_fwk/test/chhiggs/results -d  /store/group/phys_higgs/cmshzz2l2v/2014_03_20/ -c $CMSSW_BASE/src/UserCode/llvv_fwk/test/runAnalysis_cfg.py.templ -p "@useMVA=False @saveSummaryTree=False @runSystematics=False @automaticSwitch=False @is2011=False @jacknife=0 @jacks=0" -s 8nh
