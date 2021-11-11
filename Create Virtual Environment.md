## Setting up Python Virtual Environment using virtualenv

We use a module named virtualenv which is a tool to create isolated Python environments. virtualenv creates a folder which contains all the necessary executables to use the packages that a Python project would need.

Installing virtualenv
```
$ pip install virtualenv
```

Test your installation:
```
$ virtualenv --version
```

Using virtualenv

You can create a virtualenv using the following command:
```
$ virtualenv my_name
```
After running this command, a directory named my_name will be created. This is the directory which contains all the necessary executables to use the packages that a Python project would need. This is where Python packages will be installed.

If you want to specify Python interpreter of your choice, for example Python 3, it can be done using the following command:
```
$ virtualenv -p /usr/bin/python3 virtualenv_name
```

To create a Python 2.7 virtual environment, use the following command:
```
$ virtualenv -p /usr/bin/python2.7 virtualenv_name
```

Now after creating virtual environment, you need to activate it. Remember to activate the relevant virtual environment every time you work on the project. This can be done using the following command:
```
$ source virtualenv_name/bin/activate
```

Once the virtual environment is activated, the name of your virtual environment will appear on left side of terminal. This will let you know that the virtual environment is currently active.

Now you can install dependencies related to the project in this virtual environment. For example if you are using Django 1.9 for a project, you can install it like you install other packages.

```
(virtualenv_name)$ pip install Django==1.9
```

The Django 1.9 package will be placed in virtualenv_name folder and will be isolated from the complete system.
Once you are done with the work, you can deactivate the virtual environment by the following command:

```
(virtualenv_name)$ deactivate
```

## Setting up Python Virtual Environment using Anaconda


Anaconda is an open source software that contains Jupyter, spyder, etc that are used for large data processing, data analytics, heavy scientific computing. Anaconda works for R and Python programming language. Package versions are managed by the package management system conda. 

Step 1: Check if conda is installed in your path.

* Open up the anaconda command prompt.
* Type conda -V  and press enter.
* If the conda is successfully installed in your system you should see a similar output.
```
conda -V
```

Step 2: Update the conda environment 

Enter the following in the anaconda prompt.
```
conda update conda
```

Step 3: Set up the virtual environment

* Type conda search “^python$”  to see the list of available python versions.
* Now replace the envname with the name you want to give to your virtual environment and replace x.x with the python version you want to use.
```
conda create -n envname python=x.x anaconda
```

```
conda create -n ds_env python=3.9 anaconda
```

Step 4: Activating the virtual environment

* To see the list of all the available environments use command conda info -e
* To activate the virtual environment, enter the given command and replace your given environment name with envname
```
conda activate envname
```

When conda environment is activated it modifies the PATH and shell variables points specifically to the isolated Python set-up you created.


Step 5: Installation of required packages to the virtual environment

Type the following command to install the additional packages to the environment and replace envname with the name of your environment.
```
conda install -n yourenvname package
```

Step 6: Deactivating the virtual environment

To come out of the particular environment type the following command. The settings of the environment will remain as it is.
```
conda deactivate
```

Step 7: Deletion of virtual environment

If you no longer require a virtual environment. Delete it using the following command and replace your environment name with envname
```
conda remove -n envname -all
```

