import os
import subprocess

import streamlit as st


# run wav2lip model
def run_wav2lip(input_audio, input_video):
    # run wav2lip model with given input audio and video
    command = f"python inference.py --checkpoint_path checkpoints/wav2lip_gan.pth --face {input_video} --audio {input_audio} --pads 0 10 0 0 --resize_factor 1"
    # use subprocess.run() to execute the command
    result = subprocess.run(
        command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    # wait for the command to finish
    result.check_returncode()
    # print the output
    print(result.stdout.decode())


# title of app
st.title("Wav2Lip Demo")

# upload input audio file
audio_file = st.file_uploader("Upload an audio file", type=["wav", "mp3"])

# upload input video file
video_file = st.file_uploader("Upload a video file", type=["mp4", "avi"])

# button to run wav2lip model
if st.button("Run Wav2Lip"):
    if audio_file is not None and video_file is not None:
        # save uploaded files to disk
        audio_path = audio_file.name #os.path.join("uploads", audio_file.name)
        video_path = video_file.name #os.path.join("uploads", video_file.name)
        with open(audio_path, "wb") as f:
            f.write(audio_file.getbuffer())
        with open(video_path, "wb") as f:
            f.write(video_file.getbuffer())

        # run wav2lip model
        output_video_path = "results/result_voice.mp4"
        run_wav2lip(audio_path, video_path)

        # display the output video
        st.video(output_video_path)
    else:
        st.write("Please upload both an audio and a video file.")
