set -e
# Use this bash script to install non-R packages necessary for your project.

# For example
apt-get update
apt-get install -y libcurl4-openssl-dev libxml2-dev




##### This adds files to the datasets/ folder on the live project #####
# A list of files in datasets/ separated by space, needs to be manually updated
FILES=""
# The URL where the assets of the project lives
ASSETURL=
# Where the datasets will be compied on the Project image.
DATADIR=/home/repl/datasets

mkdir -p $DATADIR
for FILE in $FILES
do
	wget -O $DATADIR/$FILE $ASSETURL/$FILE
done