# Use a specific linux-64 Miniconda base image
FROM continuumio/miniconda3:latest

# Set the working directory in the container
WORKDIR /app

# Copy the conda-lock.yml file into the container
COPY build/conda/conda-lock.yml /app/conda-lock.yml

# Install conda-lock and create the conda environment
RUN conda install -c conda-forge conda-lock && \
    conda-lock install --name dockerland conda-lock.yml && \
    conda clean -afy

# Copy the needed files into the container
COPY src /app/src
