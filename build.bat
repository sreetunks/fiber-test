@echo off
pushd build
set CompilerOptions=/nologo /cgthreads8 /GS- /Gs9999999 /J /TC /std:c11
set CompilerOptions=%CompilerOptions% /Od
set CompilerOptions=%CompilerOptions% /Zi /Fd:"fiber-test.pdb" /Zl /c
cl %CompilerOptions% ..\source\main.c
ml64 /c ..\source\context.asm
set LinkerOptions=/NOLOGO /MACHINE:X64
set LinkerOptions=%LinkerOptions% /DEBUG:FULL /PDB:"fiber-test.pdb"
set LinkerOptions=%LinkerOptions% /ENTRY:main /NODEFAULTLIB
set LinkerOptions=%LinkerOptions% /SUBSYSTEM:CONSOLE /OUT:"fiber-test.exe"
link %LinkerOptions% *.obj
popd