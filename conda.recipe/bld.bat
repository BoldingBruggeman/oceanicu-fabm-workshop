mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=%PREFIX% -DFABM_BASE=../fabm -DFABM_INSTITUTES="bb;gotm;pml;ersem;ogs;nersc;msi;mops" -DFABM_ERSEM_BASE=../ersem -DFABM_OGS_BASE=../ogs -DFABM_MOPS_BASE=../mops %SRC_DIR%\gotm || exit /b
cmake --build . --config Release --parallel %CPU_COUNT% || exit /b
cmake --install . || exit /b
cd ..
rmdir /S /Q build
pip install pyncview
