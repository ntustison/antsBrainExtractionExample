library( ANTsR )

baseDirectory <- './'
inputImage <- antsImageRead(
  paste0( baseDirectory, 'IXI002-Guys-0828-T1_slice90.nii.gz' ), dimension = 2 )
template <- antsImageRead(
  paste0( baseDirectory, 'Template/T_template0_slice122.nii.gz' ), dimension = 2 )
templateMask <- antsImageRead(
  paste0( baseDirectory, 'Template/T_template0ProbabilityMask.nii.gz' ), dimension = 2 )

outputDirectory <- paste0( baseDirectory, 'OutputANTsR/' )
if( ! dir.exists( outputDirectory ) )
  {
  dir.create( outputDirectory )
  }
outputPrefix <- paste0( outputDirectory, 'antsr' )

brainExtraction <- abpBrainExtraction( img = inputImage, tem = template,
  temmask = templateMask, verbose = TRUE )

# Plot the inputImage and mask
plot( inputImage, brainExtraction$bmask, color.overlay = "jet", alpha = 0.4 )

antsImageWrite( brainExtraction$bmask, paste0( outputPrefix, 'brainMask.nii.gz' ) )
