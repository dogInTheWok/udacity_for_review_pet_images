#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 
# PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch_uploaded.sh    -- will run program from commandline within Project Workspace
#

# Modified to run evaluation on algorithms for pets --> remove dir argument
python check_images.py  --arch resnet  --dogfile dognames.txt > resnet_uploaded-images.txt
python check_images.py  --arch alexnet --dogfile dognames.txt > alexnet_uploaded-images.txt
python check_images.py  --arch vgg  --dogfile dognames.txt > vgg_uploaded-images.txt