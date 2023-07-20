# Jupyter Notebook Tutorials Demonstrating Access to NASA Data

These notebooks demonstrate how to read data from OPeNDAP servers
hosted by NASA. There are twelve DAACs (Distributed Active Archive
Centers) run by NASA and ten of those provide at least one OPeNDAP
access point. In addition, NASA's Earthdata Cloud system also provides
an OPeNDAP access point. The primary focus of these tutorials in on
the latter, but the notebooks here will work with any OPeNDAP-enabled
service, both in the cloud and running on an on-premises server.

## Setup

### Step 0: Get a NASA Earthdata Login

Go to [urs.earthdata.nasa.gov](https://urs.earthdata.nasa.gov/) 
and get a free Earthdata Login (EDL) account.

Of course, if you already have an EDL account, use that.

Either way, Keep your username and password handy, since we'll need to
log in to the Earthdata Cloud environment to access data in the notebooks.

### Step 1: Use Binder

NB: If you want to run the tutorial notebooks locally, skip to the 
next section (Running the notebooks locally).

Click on the `Binder` badge and a browser window with the tutorials 
running in Jupyter Lab (a fancier version of Jupyter notebook) should
open. That's it for the setup.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/OPENDAP/NASA-tutorials/main)

### Step 1b: Or Use Google Colab

Should the Binder environment fail for some reason, open the `colab` directory
and run the tutorials using the environments based on [Colab](https://colab.google/).
For the _colab_ versions of the notebooks, you may have to perform the authentication
steps in each of the notebooks. This is because each notebook runs in a
new environment. Thanks to Chris Battisto for providing these!

## The notebooks

* **NASA_EDL_Login.ipynb**		_All about Earthdata Login_ Run this to learn how to enable
the OPeNDAP server to access data NASA serves that requires a username and password. Once
you have run this notebook, the remain three listed here should work without requiring another
log in operation.

* **netcdf_tutorial.ipynb**		_Using the NetCDF4 library to read data_ Read and plot data
from the NASA Hyrax in the cloud server. 

* **xarray_netcdf_tutorial.ipynb**	_Use Xarray with NetCDF4_ Read the same dataset as before,
but use Xarray's interface. The package has many plotting options and also supports parallel
access to data, although those features are beyond the scope of this tutorial. Under the hood,
Xarray uses the NetCDF library by default.

* **pydap_dap4_basic.ipynb**	_Using PyDAP to read data_ The PyDAP package provides an 
alternative to the NetCDF library for access to data from OPeNDAP servers. 

* **daac-tutorials**  _Notebooks from DAACs_ These are notebooks developed by people at
the NASA DAACs and highlight some more interesting features of the NASA data systems.  

----
## **Optional**: Running the notebooks locally

Either Conda or Pip may be used to create a virtual environment that
can run these notebooks. Using a virtual environment is a good idea -
it's only tiny bit more work than not, and it can save much time by not
changing the native collection of packages bundled with you computer
(or that you use for other work).

Compatibility note: For OSX, the conda environment.yml file works for 
the older (intel) computers, but not for the Macs that use the M1/M2 chips.
For the M1/M2 Macs, use the Python venv and Pip based install.

**_The remainder of these instructions assume you are working in a shell and 
have python 3.9 or greater on your path._**

#### Get the tutorial GitHub repository

Clone the repository https://github.com/OPENDAP/NASA-tutorials

`git clone https://github.com/OPENDAP/NASA-tutorials`

Next chose to use Conda or Pip. 

#### Using Conda

If you already use conda, this is a simple way forward.

Perform these steps in a terminal window

Change to this directory in the terminal

`cd NASA-tutorials`

Start conda so the '(base)' environment is active. That may be the
case by default, so this step might not be needed.

`conda activate`

Build the virtual environment for the tutorials

`conda env create -f environment.yml`

After a few minutes, activate the new environment

`conda activate nasa-local`

#### Using Pip

Perform these steps in a terminal window

Change to this directory in the terminal

`cd NASA-tutorials`

Set up a python virtual environment

`python3 -m venv myenv`		# make the virtual env
`source myenv/bin/activate`	# use it in the current shell

Then install packages.

`pip3 install -r requirements.txt`

### Starting the local copy of the notebooks

Run `jupyter` and the notebooks will appear in your running/default
web browser. If you are using Binder, the notebooks will open in jupyter lab
in your browser. For local virtual environments, in the terminal, start jupyter:

`jupyter notebook`

Or

`jupyter lab`

Now go back to _**The notebooks**_.

### Extra

This is an attempt to separate the content of the tutorial notebooks from the binder
environment. Not really working due to some odd authentication (jupyter, not EDL) problem.

Binder from separate environment repo: 
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/OPENDAP/jupyter-binder/main?urlpath=git-pull?repo=https://github.com/OPENDAP/NASA-tutorials)

----
Copyright (C) 2023 OPeNDAP, Inc. This Jupyter Notebook is made available under the Creative Commons Attribution license 4.0.
