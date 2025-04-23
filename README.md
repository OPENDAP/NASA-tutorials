
# Jupyter Notebook Tutorials Demonstrating Access to NASA Data

These notebooks demonstrate how to read data from OPeNDAP Hyrax data 
servers hosted by NASA. There are twelve DAACs (Distributed Active Archive
Centers) run by NASA and ten of those provide at least one OPeNDAP
access point. 
## Setup

### Step 0: Get a NASA Earthdata Login

Go to [urs.earthdata.nasa.gov](https://urs.earthdata.nasa.gov/) 
and get a free Earthdata Login (EDL) account.

Of course, if you already have an EDL account, use that.

If possible - create / renew the Bearer Token.

### Step 1: Use Binder

NB: If you want to run the tutorial notebooks locally, skip to the 
next section (Running the notebooks locally).

Click on the `Binder` badge and a browser window with the tutorials 
running in Jupyter should open. That's it for the setup.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/OPENDAP/NASA-tutorials/HEAD)

## The notebooks

* **Get Started.ipynb**		
_All about Earthdata Login_ Run this to create a local token object. Must have a
an active EDL account. The token object will be used in other notebooks.

* **ECCOv4.ipynb**		
_Uses pydap an xarray_ to aggregate an an entire collection of
the ECCOv4 simulation. It uses the _Common Metadata Repository_ (CMR) to find cloud OPeNDAP URLs
associated with the DOI of the data collection.

* **earthaccess.ipynb**	
_Uses earthaccess to create a VirtualZarr from OPeNDAP DMR++ for Cloud
data_. earthaccess uses the _Common Metadata Repository_ (CMR) to query all dataset by their
short name.

* **on-premOPeNDAP.ipynb**	_Using pydap an xarray_ it creates a virtually aggregation of 100s of
OPeNDAP URLs hosted by NASA on premises on the OB.DAAC.

----
## **Optional**: Running the notebooks locally

You can run this on your local machine. To do so you need to have Anaconda installed.

* Steps 1

Clone the repository https://github.com/OPENDAP/NASA-tutorials

`git clone https://github.com/OPENDAP/NASA-tutorials`
`cd NASA-tutorials`

* Steps 2

Start conda so the '(base)' environment is active. That may be the
case by default, so this step might not be needed.

```
conda activate
```

Build the virtual environment for the tutorials

```
conda env create -f binder/environment.yml`
```

After a few minutes, activate the new environment

```
conda activate Earthdata2025`
```

* Step 3 Starting the local copy of the notebooks

Run `jupyter lab` and the notebooks will appear in your running/default
web browser. 

```
jupyter lab
```
----
Copyright (C) 2025 OPeNDAP, Inc. This Jupyter Notebook is made available under the Creative Commons Attribution license 4.0.
