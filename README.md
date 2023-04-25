# Fingerprint-Matching-and-Liveness-Detection-based-on-minutiae-centered-patches
Determines whether a fingerprint is live or fake with trained models

**Datasets used:** LivDet 2017

**OS used:** Ubuntu 20.04.6 LTS

**Process Workflow:**
1. Minutiae extraction and Fingerprint matching
2. Minutiae-centered patch extraction
3. Quality feature extraction
4. Training the ML models
5. Testing the ML models
6. Evaluation metrics/Performance measures

**Minutiae extraction:**
1. Download the latest version of NBIS software from https://www.nist.gov/itl/iad/image-group/products-and-services/image-group-open-source-server-nigos#Releases
2. Extract all the files from the downloaded zip file and save them in the Downloads folder.
3. Create a new folder with the name **NBIS_Tool** inside the home folder to setup the NBIS software.
4. Open the terminal and execute the command _cd /Downloads/nbis_v5_0_0/Rel_5.0.0_ and then _./setup.sh /home/srini/NBIS_Tool --without-X11 --STDLIBS --64_
5. GCC should be installed in the OS. If not, execute the following commands in the terminal:
_sudo apt-get update_ and _sudo apt-get install gcc_
6. Execute the following commands:
_sudo make config_, _sudo make it_ and _make install LIBNBIS=yes_
7. Create a new folder with the name **output** inside the home folder to save the minutiae files.
8. To extract minutiae from a single fingerprint image, execute the command _/home/NBIS_Tool/bin/mindtct [Path to the fingerprint image] [Path to the output folder followed by a '/' and name of the files]_. Make sure that the fingerprint image is a grayscale jpg image, since the software doesn't support any other image formats.
9. To extract minutiae from all fingerprint images of a folder, execute the mindtct.sh file after making the required changes in that mindtct.sh file preceeded by the execution of the command _chmod +x mindtct.sh_ in the terminal.
10. The .xyt files in the output folder contain the information about the minutiae points of a particular fingerprint image i.e., x co-ordinate, y co-ordinate, orientation angle and quality score.

**Fingerprint matching:**
1. Execute the command _/home/srini/NBIS_Tool/bin/bozorth3 -m1 [Path to the .xyt file of a fingerprint image] [Path to the .xyt file of another fingerprint image]_
2. It gives out the matching score of both fingerprints.