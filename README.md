# hlds-docker
Dockerfile for Half-Life 1 dedicated server

## Starting
Create the image with
``docker build -t hldsimage .``

If it doesn't work on the first time, try running the image build again. Sometimes the app_update from Steam just fails.

Run a new container with 
``docker run --name hlds -p 27015:27015 -p 27015:27015/udp -p 26900:26900/udp -p 27020:27020/udp hldsimage``
