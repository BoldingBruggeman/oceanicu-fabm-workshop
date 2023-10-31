# Building an installation package (Linux/Windows/Mac)

```
conda build <RECIPEDIR> -c conda-forge -c bolding-bruggeman.com
```

Windows: if VS2017 or VS2019 + MSVC v141 is installed, this command should work
on a normal command prompt. (no need to load MSVC or Intel-specific environments)