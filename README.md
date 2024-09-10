# Proot

This repository contains the source code for the `proot` binary used in the [Karbon project](https://github.com/RohitKushvaha01/Xed-Editor).

## Source

The source code is derived from the [Termux/proot](https://github.com/termux/proot) repository.

## Building

**Note: This binary should be built within the Termux environment.**

To build the `proot` binary, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/RohitKushvaha01/Proot
    ```

2. Navigate to the project directory:
    ```bash
    cd Proot
    ```

**NOTE:** if you are building for package name other than *com.rk.xededitor*(karbon) you have to change the package name in GNUmakefile

3. Execute the build script:
    ```bash
    bash compile.sh
    ```

Upon successful completion of the build process, a `proot.tar.gz` file will be generated.
