#!/bin/zsh

set -e

# ------------------------------------------------------------------------------
#
# run_install_aws_cli.zsh: Install AWS Command Line Interface on macOS.
#
# ------------------------------------------------------------------------------

echo "=========================================================================="
echo "Installing AWS CLI."
echo "--------------------------------------------------------------------------"
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

echo "=========================================================================="
echo "Verifying AWS CLI installation..."
echo "--------------------------------------------------------------------------"
which aws
aws --version

echo "=========================================================================="
echo "Configuring AWS CLI. Please enter your credentials."
echo "--------------------------------------------------------------------------"
echo "AWS Access Key ID:     AKIAWOYZWBWB6ALP6JDX                               "
echo "AWS Secret Access Key: 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           "
echo "Default region name:   us-east-1                                          "
echo "Default output format:                                                    "
echo "--------------------------------------------------------------------------"
aws configure

rm -r aws
rm awscliv2.zip

echo "--------------------------------------------------------------------------"
date +"DATE TIME : %d.%m.%Y %H:%M:%S"
echo "--------------------------------------------------------------------------"
echo "End"
echo "=========================================================================="
