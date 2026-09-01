About runner-feedstock
======================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/runner-feedstock/blob/main/LICENSE.txt)

Home: https://www.theochem2.ruhr-uni-bochum.de/tc/software/runner.html.en

Package license: GPL-3.0-or-later

Summary: RuNNer - a Neural Network code for high-dimensional systems

Development: https://gitlab.com/runner-suite/runner2

Documentation: https://runner-suite.gitlab.io/runner2

RuNNer is a software framework for the development of Behler-Parrinello
high-dimensional neural network potentials (HDNNPs), actively developed
at Ruhr Universität Bochum, Germany.

Three build variants are provided under the single package name ``runner``:

gnu_omp
  GCC/gfortran, OpenBLAS, serial only.  Linux and macOS.

gnu_mpi_omp
  GCC/gfortran, OpenBLAS, OpenMPI parallel build.  Linux and macOS.

intel
  Intel ifx, MKL, serial only.  Linux x86-64 only.

Select a specific variant with a build-string glob, e.g.::

  conda install "runner=*=gnu_omp_*"   # GNU serial
  conda install "runner=*=gnu_mpi_omp_*"   # GNU parallel
  conda install "runner=*=intel_*"   # Intel serial

A parallel Intel variant is not provided.

Current build status
====================


<table><tr>
    <td>GitHub Actions</td>
    <td>
      <a href="https://github.com/conda-forge/runner-feedstock/actions/workflows/conda-build.yml">
        <img src="https://github.com/conda-forge/runner-feedstock/actions/workflows/conda-build.yml/badge.svg?event=push&branch=main">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=12016&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/runner-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>osx_64_is_intelfalserunner_variantgnu_mpi_ompwith_mpitrue</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=12016&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/runner-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_is_intelfalserunner_variantgnu_mpi_ompwith_mpitrue" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_is_intelfalserunner_variantgnu_ompwith_mpifalse</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=12016&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/runner-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_is_intelfalserunner_variantgnu_ompwith_mpifalse" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-runner-green.svg)](https://anaconda.org/conda-forge/runner) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/runner.svg)](https://anaconda.org/conda-forge/runner) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/runner.svg)](https://anaconda.org/conda-forge/runner) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/runner.svg)](https://anaconda.org/conda-forge/runner) |

Installing runner
=================

Installing `runner` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

How to use
----------

<details>
<summary>With conda</summary>

```
conda install runner
```

</details>

<details>
<summary>With mamba</summary>

```
mamba install runner
```

</details>

<details>
<summary>With pixi</summary>

```
# for adding to your local project
pixi add runner
# for installing globally
pixi global install runner
```

</details>

Search package versions
-----------------------

It is possible to list all of the versions of `runner` available on your platform:

<details>
<summary>With conda</summary>

```
conda search runner --channel conda-forge
```

</details>

<details>
<summary>With mamba</summary>

```
mamba search runner --channel conda-forge
```

</details>

<details>
<summary>With pixi</summary>

```
pixi search runner --channel conda-forge
```

</details>

<details>
<summary>With mamba repoquery, which may provide more information</summary>

```
# Search all versions available on your platform:
mamba repoquery search runner --channel conda-forge

# List packages depending on `runner`:
mamba repoquery whoneeds runner --channel conda-forge

# List dependencies of `runner`:
mamba repoquery depends runner --channel conda-forge
```

</details>


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance,
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information, please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating runner-feedstock
=========================

If you would like to improve the runner recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/runner-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@M0M097](https://github.com/M0M097/)
* [@Theochem2RUB](https://github.com/Theochem2RUB/)
* [@gunnar1987](https://github.com/gunnar1987/)
* [@jan-janssen](https://github.com/jan-janssen/)
* [@lxknll](https://github.com/lxknll/)
* [@mirajkovic](https://github.com/mirajkovic/)

