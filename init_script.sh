# build the image
docker build -t data-processor .

# run the container parsing input and output paths
docker run -p 8888:8888 -e INPUT_PATH=input/test_dataset.csv -e OUTPUT_PATH=preprocessed.csv data-processor
