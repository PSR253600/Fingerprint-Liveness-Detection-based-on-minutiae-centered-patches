# Fingerprint-Matching-and-Liveness-Detection-based-on-minutiae-centered-patches
Determines whether a fingerprint is live or fake with trained models

**Datasets used:** LivDet 2017

**OS used:** Ubuntu 20.04.6 LTS

**Process Workflow:**
1. Minutiae extraction
2. Minutiae-centered patch extraction
3. Quality feature extraction
4. Training the ML models
5. Testing the ML models
6. Evaluation metrics/Performance measures

**Minutiae extraction:**
1. Download the latest version of NBIS software from https://www.nist.gov/itl/iad/image-group/products-and-services/image-group-open-source-server-nigos#Releases
2. Extract all the files from the downloaded zip file and save them in the Downloads folder.
3. Create a new folder with the name **NBIS_Tool** inside the home folder.
4. Open the terminal and execute the command _cd /Downloads/nbis_v5_0_0/Rel_5.0.0_ and then _./setup.sh /home/srini/NBIS_Tool --without-X11 --STDLIBS --64
5. GCC should be installed in the OS. If not, execute the following commands in the terminal:
_sudo apt-get update_ and _sudo apt-get install gcc_
6. Execute the following commands:
_sudo make config_, _sudo make it_ and _make install LIBNBIS=yes_