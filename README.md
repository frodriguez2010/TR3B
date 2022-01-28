MANTA INFO
--------------------------------------------------------------------------------------------------------------
<b><u>SPECIFICATIONS:</u></b><br>
Algo: Scrypt POS<br>
Max coin supply: 300.000.000<br>
Premine percent: 1.500.000<br>
PoS percentage:<br> 
0,000 -  58,400      12.5% <br> 
58,400 - 116,800      6.25%<br> 
116,800 - 175,200     3.125%<br> 
175,200 - 233,600     1.56%<br> 
233,600 - 292,000     .78%<br> 
292,000 - 350,400     .39%<br> 
350,400 - 408,800     .195%<br> 
408,800 - 467,200     .098%<br> 
467,200 - 525,600     .049%<br> 
525,600 - 584,000     .024%<br> 
584,000 - 642,400     .012%<br> 
642,400 - Max Supply  .006%<br> 
Coinbase maturity: 15 blocks<br>
Target spacing: 9 minutes<br>
Pow 0 coins per block till block 200k<br>
rpcport=11332<br>
<br>
Explorer – http://tr3b.freakhouse.dev/<br>

EXCHANGES<br>
<br>
Docker
Instructions for installing docker.

First, build the image.

# Git clone this repo
https://github.com/freakcoderz/TR3B.git

# go to the same directory Dockerfile exists
cd TR3b
# Build the container and tag it with a usable name + version
docker build -t TR3bd:v1.0.0 .
You should see logs similar to below. This takes a while, as it is provisioning the image by installing dependencies and building the TR3b binary.

Sending build context to Docker daemon  156.4MB

Step 1/12 : FROM ubuntu:16.04

..............

Removing intermediate container 20bf170af587

Successfully built 347a6416af66
Successfully built TR3bd:v1.0.0
Then, copy the unique identifier built by Docker (in this case, 347a6416af66).

➜  TR3b git:(master) ✗ docker run -d TR3bd:v1.0.0
46ecdf76b5b7ead9271ba5f313b03f2cf8002489f11c1de17e495767da3adebf
This runs the binary, TR3bd, with no command arguments.

-d: daemonize the container. Run docker logs 347a6416af66 -f to tail the standard output.

-v: persist the data in your host machine. Example: docker run -d -v $(pwd)/docker/data:/root/.TR3b/ TR3bd:v1.0.0
