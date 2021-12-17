FROM python:3.10.1

# Sets an environmental variable that ensures output from python is sent straight to the terminal without buffering it first
ENV PYTHONUNBUFFERED 1

# Sets the container's working directory to /app
WORKDIR /notebooks

# Copies all files from our local project into the container
COPY . ./

# runs the pip install command for all packages listed in the requirements.txt file
RUN pip install -r requirements.txt
