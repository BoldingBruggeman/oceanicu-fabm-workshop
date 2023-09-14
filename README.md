# OceanICU hands-on model workshop

For this workshop, we will work in a terminal window while installing and running models. This looks different on different platforms:
* On Windows, use the "Anaconda prompt" from the start menu (instructions on how to install that below).

We will be editing text files with model configurations. This can be done with many different editors, e.g., [Visual Studio Code](https://code.visualstudio.com/), Notepad on Windows, `vi` on Linux/Mac. We recommend using one you are already familiar with.

## Install the water column model locally

This does *not* require administrator or root permissions.

1. Ensure you have Anaconda:
   - Linux/Mac: execute `conda --version` in a terminal
   - Windows: look for “Anaconda prompt” in the start menu

   If you *do not* have Anaconda, install Miniconda on [Linux](https://conda.io/projects/conda/en/stable/user-guide/install/linux.html), [Windows](https://conda.io/projects/conda/en/stable/user-guide/install/windows.html), or [Mac](https://conda.io/projects/conda/en/stable/user-guide/install/macos.html).

2. Create an isolated `oceanicu` environment with the model and visualization tools:
    ```
    conda create -n oceanicu -c bolding-bruggeman -c conda-forge oceanicu
    ```
    If you experience any issue with the above, we recommend you first execute `conda update conda` to ensure your conda is up to date.
    Should this fail because of lack of permissions, we recommend you install Miniconda as described under the previous option. After
    you have an up-to-date conda, retry the `conda create ...` command.


If the above has succeeded, you are ready for the workshop.
Instructions below are for reference during and after the workshop only.

## Running the model

1. Every time you open a terminal window, activate the `oceanicu` environment:
   ```
   conda activate oceanicu
   ```
   As long as this is active, you will see `(oceanicu)` in front of the command prompt.

2. Ensure you are in the directory with your extracted, downloaded GOTM setup:
   ```
   cd <DIR>
   ```

3. To run the model:
   ```
   gotm
   ```

4. To view results:
   ```
   pyncview result.nc
   ```

## Uninstall

To remove the installated software:

```
conda env remove -n oceanicu
```