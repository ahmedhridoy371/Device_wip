# replace HALs
rm -rf hardware/qcom-caf/msm8998/media;
rm -rf hardware/qcom-caf/msm8998/display;
rm -rf hardware/qcom-caf/msm8998/audio;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_display hardware/qcom-caf/msm8998/display;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_media hardware/qcom-caf/msm8998/media;
git clone -b arrow-13.0-caf-msm8998 https://github.com/ArrowOS/android_hardware_qcom_audio hardware/qcom-caf/msm8998/audio
