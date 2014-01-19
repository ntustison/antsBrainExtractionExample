#!/bin/bash
DATA_DIR=${PWD}/
TEMPLATE_DIR=${DATA_DIR}/Template/
OUT_DIR=${DATA_DIR}/Output/

export ANTSPATH=/Users/ntustison/Pkg/ANTs/bin/bin/

bash ${ANTSPATH}antsBrainExtraction.sh \
  -d 2 \
  -a ${DATA_DIR}KKI2009-01-MPRAGE_slice150.nii.gz \
  -e ${TEMPLATE_DIR}T_template0_slice122.nii.gz \
  -m ${TEMPLATE_DIR}T_template0ProbabilityMask.nii.gz \
  -o ${OUT_DIR}example

