[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/OPENDAP/NASA-tutorials/HEAD)

# Jupyter Notebook Tutorials Demonstrating Access to NASA Data

These notebooks demonstrate how to read data from OPeNDAP Hyrax data servers hosted by NASA. 
Most of NASA's discipline-specific Distributed Active Archive Centers (DAACs) provide at least
one OPeNDAP access point.


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



## The notebooks

The overall organization is:

* **binder/*.ipynb**: These demonstrate basic and most performant access to OPeNDAP data via PyDAP. These cover
    * How to find OPeNDAP URLS
    * How to Authenticate
    * How to subset by variable names, time range, and coordinate values.
    * How to best stream OPeNDAP dap4 responses into local NetCDF4 files.

* **binder/Xarray/*.ipynb **: These tutorials demonstrate access to OPeNDAP data using Xarray and "PyDAP" as the backend engine. To get the most performant access requires extra tricks, and these tutorials cover what is needed to get close to performance access.

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
conda activate Earthdata2026`
```

* Step 3 Starting the local copy of the notebooks

Run `jupyter lab` and the notebooks will appear in your running/default
web browser. 

```
jupyter lab
```
----
Copyright (C) 2025 OPeNDAP, Inc. This Jupyter Notebook is made available under the Creative Commons Attribution license 4.0.
