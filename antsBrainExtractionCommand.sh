#!/bin/bash
DATA_DIR=${PWD}/
TEMPLATE_DIR=${DATA_DIR}/Template/
OUT_DIR=${DATA_DIR}/Output/

bash ${ANTSPATH}antsBrainExtraction.sh \
  -d 2 \
  -a ${DATA_DIR}IXI002-Guys-0828-T1_slice90.nii.gz \
  -e ${TEMPLATE_DIR}T_template0_slice122.nii.gz \
  -m ${TEMPLATE_DIR}T_template0ProbabilityMask.nii.gz \
  -o ${OUT_DIR}example

