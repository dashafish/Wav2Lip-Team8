# Wav2Lip-Team8

Contributors - Riya Parasar, Carl Pittenger, Michael Slusser, Dasha Rizvanova

Wav2Lip is a project that utilizes deep learning techniques to synthesize realistic lip movements in a target video based on an input audio clip. By combining audio information with visual lip movements, Wav2Lip offers a powerful tool for various applications such as dubbed movies and video conferencing.

Link to original GitHub - [https://github.com/Rudrabha/Wav2Lip](https://github.com/Rudrabha/Wav2Lip)

Link to Project Report - [Paper](https://docs.google.com/document/d/1clDbCi-J-YRzxe7q65Yy83252pzqMmuQIzw7OW0Vz5o/edit?usp=sharing)

Link to Google Colab with Instructions how the GitHub Repo Code was Converted into the Google Colab Notebook - [Google Colab](https://colab.research.google.com/drive/1yky8Yw8TeEBtm6UBH_LNu0iF4EuVszcN#scrollTo=a-lmNnL1zscv)

## Easy Steps to Execute Google Colab
1. Use the [Google Colab](https://colab.research.google.com/drive/1yky8Yw8TeEBtm6UBH_LNu0iF4EuVszcN#scrollTo=a-lmNnL1zscv) link to run the inference code that will generate a lip-synced video

## How to Install Manually
Make sure the following are installed and can be accessed via your terminal:

- Python 3.6 or later
- Pip
- Git
- Windows & Linux: Cuda For GPU acceleration

1. **Clone the Repository**:
   Clone the Wav2Lip repository from GitHub:
   
   `git clone https://github.com/Rudrabha/Wav2Lip.git`
3. **Navigate to the repository and install the dependencies**:

   `cd Wav2Lip`

   `pip install -r requirements.txt`

5. **Download Pretrained Models**:

 Place them in the `Wav2Lip/checkpoints/` directory.

7. **Test**:

 Use the following command to test if everything works correctly: `python inference.py --checkpoint_path checkpoints/Wav2Lip.pth --face ../sample_data/input_vid.mp4 --audio ../sample_data/input_audio.wav`.

- Make sure to provide a video file (`input_vid.mp4`) containing the target person's face where lip-syncing will be applied.
- Also provide an audio file (`input_audio.wav`) containing the speech or audio that you want the target person's lips to sync with.
- Ensure that `checkpoints/Wav2Lip.pth` points to the location of your downloaded pretrained model.

8. **View output**:

 Once everything is completed, you should be able to see your output as ***result_voice.mp4*** in the current directory after running the inference command.

## Execute App

1. `pip install streamlit`
2. Navigate to the `Wav2Lip` folder/directory
3. Run `streamlit run app.py`