#!/bin/sh
# -------
# input feature directories
#  here, we use features in ../TESTDATA/vctk_vctk_anonymize for demonstration
# 
export TEMP_ACOUSTIC_MODEL_INPUT_DIRS=$PWD/../TESTDATA/vctk_anonymize/ppg,$PWD/../TESTDATA/vctk_anonymize/xvector_utterance_level,$PWD/../TESTDATA/vctk_anonymize/f0

# where is the directory of the trained model
export TEMP_ACOUSTIC_MODEL_DIRECTORY=$PWD/MODELS/DAR_001

# where is the trained model?
#  here, we use network.jsn for demonstration.
#  of course, it will generate random noise only
export TEMP_ACOUSTIC_NETWORK_PATH=$PWD/MODELS/DAR_001/trained_network.jsn

# where to store the features generated by the trained network?
export TEMP_ACOUSTIC_OUTPUT_DIRECTORY=$PWD/MODELS/DAR_001/output

# directory to save intermediate files (it will be deleted after)
export TEMP_ACOUSTIC_TEMP_OUTPUT_DIRECTORY=./tmp_int_out

# 
python ../SCRIPTS/03_syn.py config
# after running this scripts, the generated features should be in ${TEMP_ACOUSTIC_OUTPUT_DIRECTORY}

rm -r ${TEMP_ACOUSTIC_TEMP_OUTPUT_DIRECTORY}