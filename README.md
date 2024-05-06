# Wav2Lip-Team8

Contributors - Riya Parasar, Carl Pittenger, Michael Slusser, Dasha Rizvanova

Wav2Lip is a project that utilizes deep learning techniques to synthesize realistic lip movements in a target video based on an input audio clip. By combining audio information with visual lip movements, Wav2Lip offers a powerful tool for various applications such as dubbed movies and video conferencing.

Link to original GitHub - [https://github.com/Rudrabha/Wav2Lip](https://github.com/Rudrabha/Wav2Lip)

Link to Project Report - [Paper](https://docs.google.com/document/d/1clDbCi-J-YRzxe7q65Yy83252pzqMmuQIzw7OW0Vz5o/edit?usp=sharing)

Link to Google Colab with Instructions how the GitHub Repo Code was Converted into the Google Colab Notebook - [Google Colab](https://colab.research.google.com/drive/1yky8Yw8TeEBtm6UBH_LNu0iF4EuVszcN#scrollTo=a-lmNnL1zscv)

# Easy Steps to Execute 
1. Use the [Google Colab](https://colab.research.google.com/drive/1yky8Yw8TeEBtm6UBH_LNu0iF4EuVszcN#scrollTo=a-lmNnL1zscv) link to run the inference code that will generate a lip-synced video
   
# How to Install Manually
Make sure the following are installed and can be accessed via your terminal:

- Python 3.6 or later
- Pip
- Git
- Windows & Linux: Cuda 

1. **Clone the Repository**: Clone the Wav2Lip repository from GitHub:
   
   git clone https://github.com/Rudrabha/Wav2Lip.git
2. **Navigate to the repository and install the dependencies**
   cd Wav2Lip
   pip install -r requirements.txt

3. **Download Pretrained Models** Place them in the Wav2Lip/checkpoints/ directory.

4. **Test** Use the following command to test if everything works correctly python inference.py --checkpoint_path checkpoints/Wav2Lip.pth --face ../sample_data/input_vid.mp4 --audio ../sample_data/input_audio.wav. Make sure to replace the audio and video files with yours.

5. **View output** Once everything is completed, you should be able to see your output as ***result_voice.mp4***


