# Step 1/10 Here we're creating our image from the python alpine image
FROM python:3.8-alpine

# Step 2/10 This is just to keep track or show that you own this image
MAINTAINER Chuckz Okoye

# Step 3/10 This helps avoid cpmplications from running python in containers
ENV PYTHONUNBUFFERED=1

# Step 4/10 Here we copy our requirements.txt file to our docker image
COPY ./requirements.txt /requirements.txt

# Step 5/10 Here we install packages from the requirements file we just copied
RUN pip install -r /requirements.txt

# Step 6/10 Here we create a directory in our docker image
RUN mkdir /code

# Step 7/10 Here we set the created directory as our working directory in our docker image
WORKDIR /code

# Step 8/10 Here we copy the contens of our local code directory to our docker image
COPY . /code/

# Step 9/10 Here we create a user to run our application in docker
RUN adduser -D user

# Step 10/10 Here we switch the docker user to the user we created in step 9
USER user
