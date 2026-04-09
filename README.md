[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/OPENDAP/NASA-tutorials/HEAD)

# Jupyter Notebook Tutorials Demonstrating Access to NASA Data via OPeNDAP and Python

These notebooks demonstrate how to access data from OPeNDAP Hyrax data servers hosted by NASA over the network. 
Most of NASA's discipline-specific Distributed Active Archive Centers (DAACs) provide at least
one OPeNDAP access point.

### Requirements
- Earthdata Login valid credentials. If you do not have an account, go to [urs.earthdata.nasa.gov](https://urs.earthdata.nasa.gov/) and get a free Earthdata Login (EDL) account.
- Basic familiarity with python
- Internet connection.

### The Tutorial Notebooks

The overall organization is:

* **binder/*.ipynb**: These demonstrate basic and most performant access to OPeNDAP data via [PyDAP](https://pydap.github.io/pydap/en/intro.html). These cover
    * How to find OPeNDAP URLS
    * How to Authenticate
    * How to subset by variable names, time range, and coordinate values.
    * How to best stream OPeNDAP dap4 responses into local NetCDF4 files.

* **binder/Xarray/*.ipynb**: These tutorials demonstrate access to OPeNDAP data using Xarray and [PyDAP](https://pydap.github.io/pydap/en/intro.html) as the backend engine. To get the most performant access requires extra tricks, and these tutorials cover what is needed to get close to performance access.


## Run Tutorials Interactively with Binder
Click on the `Binder` badge above. It will open a browser window with the tutorials ready to run. The
binder environment will have all dependencies installed. Binder has limited compute and network bandwith. If 
you are interested in running heavy workload we recomment running this notebooks locally, and installing 
all dependencies in your local machine.

## Run Tutorials Locally

You can run these tutorials on your local machine. To do so you need to have Anaconda installed. Below we outline
the steps to run the tutorials locally.

1. Clone the repository https://github.com/OPENDAP/NASA-tutorials

```
$    git clone https://github.com/OPENDAP/NASA-tutorials`
$    cd NASA-tutorials`
```

2. Start conda so the '(base)' environment is active. That may be the
case by default, so this step might not be needed.

```
$    conda activate
```

3. Build the virtual environment for the tutorials

```
$    conda env create -f binder/environment.yml`
```

4. After a few minutes, activate the new environment

```
$    conda activate Earthdata2026`
```

5. Run `jupyter lab` and the notebooks will appear in your running/default
web browser. 

```
$    jupyter lab
```
----
Copyright (C) 2025 OPeNDAP, Inc. This Jupyter Notebook is made available under the Creative Commons Attribution license 4.0.
