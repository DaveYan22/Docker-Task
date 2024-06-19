    # Use an official Python runtime as a parent image
    FROM python:3.12-slim

    # Set the working directory
    WORKDIR /usr/app

    # Copy the current directory contents into the container at /N_RICH
    COPY . /usr/app

    # Install any necessary dependencies
    RUN pip install -r requirements.txt

    # Expose port for Jupyter
    EXPOSE 8888

    # Run Jupyter notebook when the container launches
    ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "main.ipynb"]
