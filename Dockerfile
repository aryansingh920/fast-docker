FROM python:3.9.16-slim
# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt
# RUN bash run.sh

# RUN apk --update add python py-pip openssl ca-certificates py-openssl wget
# RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
#     && pip install --upgrade pip \
#     && pip install -r requirements.txt \
#     && apk del build-dependencies



# Copy the rest of the project files to the container
COPY . .

# Expose the port that the application will be running on
EXPOSE 8000
# RUN chmod +x deployment-service
# Run the application
CMD ["uvicorn", "main:app"]