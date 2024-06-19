# Comands to execute to work with docker

## build the image
docker build -t data-processor .

## run the container parsing input and output paths
docker run -p 8888:8888 -e INPUT_PATH=input/test_dataset.csv -e OUTPUT_PATH=output/preprocessed.csv data-processor

# Dockerfile installs the Requirment when executing

## Install requirements with this command
- RUN pip install -r requirements.txt

## Requirements
matplotlib
numpy
pandas
seaborn
scikit-learn
scipy
jupyter