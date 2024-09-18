# Use a specific linux-64 Miniconda base image
FROM continuumio/miniconda3:latest

# Set the working directory in the container
WORKDIR /app

# Copy the conda-lock.yml file into the container
COPY build/conda/conda-lock.yml /app/conda-lock.yml

# Install conda-lock and create the conda environment
RUN conda install -c conda-forge conda-lock && \
    conda-lock install --name myenv conda-lock.yml && \
    conda clean -afy

# Activate the conda environment
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# Copy the source code into the container
COPY src /app/src

# Set the default command to run your application
CMD ["python", "src/main.py"]
