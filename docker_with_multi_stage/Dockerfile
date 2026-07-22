###########################################
# BASE IMAGE
###########################################

FROM python:3.12-slim AS build
workdir /app
COPY calculator.py .
run apt-get update && apt-get install -y python3 python3-pip

############################################
# HERE STARTS THE MAGIC OF MULTI STAGE BUILD
############################################

FROM gcr.io/distroless/python3

WORKDIR /app

# Copy the compiled binary from the build stage
COPY --from=build /app /calculator.py .

# Set the entrypoint for the container to run the binary
cmd ["python3","calculator.py"]
