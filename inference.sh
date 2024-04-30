# Clone the Wav2Lip repository
git clone https://github.com/justinjohn0306/Wav2Lip.git

# Change directory
cd Wav2Lip/evaluation/scores_LSE || exit

# Clone the syncnet_python repository
git clone https://github.com/joonson/syncnet_python.git

# Change directory
cd syncnet_python || exit

# Install the required Python packages
pip install -r requirements.txt

# Download the model
sh download_model.sh

# Change directory
cd ..

# Copy the Python scripts and shell scripts to syncnet_python directory
cp ./*.py syncnet_python
cp ./*.sh syncnet_python

# Change directory
cd syncnet_python || exit

# Run the Python script
python calculate_scores_LRS.py --data_root /content/drive/MyDrive/wav2lip/video_root --tmp_dir tmp_dir

cd ../../..

# Download the checkpoint files
wget 'https://github.com/justinjohn0306/Wav2Lip/releases/download/models/wav2lip.pth' -O 'checkpoints/wav2lip.pth'
wget 'https://github.com/justinjohn0306/Wav2Lip/releases/download/models/wav2lip_gan.pth' -O 'checkpoints/wav2lip_gan.pth'
wget 'https://github.com/justinjohn0306/Wav2Lip/releases/download/models/mobilenet.pth' -O 'checkpoints/mobilenet.pth'

# Install batch-face for inference code
pip install git+https://github.com/elliottzheng/batch-face.git@master

python inference.py --checkpoint_path "/content/Wav2Lip/checkpoints/wav2lip_gan.pth" --face "/content/drive/MyDrive/wav2lip/wav2lip.mp4" --audio "/content/drive/MyDrive/wav2lip/wav2lip.mp3" --pads 0 10 0 0 --resize_factor 1

