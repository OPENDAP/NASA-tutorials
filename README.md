# Jupyter Notebook Tutorials Demonstrating Access to NASA Data

These notebooks deonstrate how to read data from OPeNDAP servers
hosted by NASA. There are twelve DAACs (Distributed Active Archive
Centers) run by NASA and ten of those provide at least one OPeNDAP
access point. In addition, NASA's Earthdata Cloud system also provides
an OPeNDAP access point. The primary focus of these tutorials in on
the latter, but the notebooks here will work with any OPeNDAP-enabled
service, both in the cloud and running on an on-premises server.

## Setup

Either Conda or Pip may be used to create a virutal environment that
can run these notebooks. Using a virtual environment is a good idea -
it's only tiny bit more work than not and it can save much time by not
changing the native collection of packages bundled with you computer
(or that you use for other work).

### Using Conda

If you already use conda, this is a simple way forward.

Perform these steps in a terminal window

Change to this directory in the terminal

	cd .../NASA-tutorials

Start conda so the '(base)' environment is active. That may be the
case by default, so this step might not be needed.

	conda activate

Build the virtual environment for the tutorials

	conda env create -f environment.yml

After a few minutes, activate the new environment

	conda activate nasa-tutorials

### Using Pip

Perform these steps in a terminal window

Change to this directory in the terminal

	cd .../NASA-tutorials

Set up a python virtual environment

	python3 -m venv myenv		# make the virtual env
	source myenv/bin/activate	# use it in the current shell

Then install packages. 

	pip install netCDF4
	pip install matplotlib cartopy numpy jupyter earthaccess

This gets an env that enables the plain netcdf notebook.

For the xarray/netcdf notebook, add

	pip install xarray

For the pydap notebook(s), add
	
	pip install pydap

## Using the notebooks

Run `jupyter` and the notebooks will appear in your running/default
web browser. In the terminal, start jupyter:

	jupyter notebook

### The notebooks...

## Notes

### 7/7/23

There are serious problems with the netcdf-c library version 4.9.1 and
4.9.2 that have broken EDL authentication. 4.9.0 does work, but trying
to use that with a conda env was just too hard. 

I switched to the python venv system and installed packages using pip
which, via stroke of good fortune, worked. 

### 7/10/23

I added pip-tools so that requirements.in --> requirements.txt works.
This should streamline running the notebooks using binder.
