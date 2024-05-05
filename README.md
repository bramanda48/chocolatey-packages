<a name="readme-top"></a>

<div align="center">
  <a href="https://github.com/bramanda48/chocolatey-packages">
    <img src="https://chocolatey.org/assets/images/global-shared/logo-square.svg" alt="Screenshoot" width="500px">
  </a>
  <h2 align="center">Chocolatey Packages</h2>
  <div align="center">
    <p align="center">
      This repository contains <a href="https://chocolatey.org/docs/getting-started#what-are-chocolatey-packages">chocolatey packages</a> that are maintained by bramanda48, both manual and automatic.
    </p>
    <div>
        <a href="https://ci.appveyor.com/project/bramanda48/chocolatey-packages"><img src="https://ci.appveyor.com/api/projects/status/github/bramanda48/chocolatey-packages?svg=true" alt="Chocolatey Packages"></a>
        <a href="https://gist.github.com/bramanda48/fda2c496c40ad990cdb6225ca6634e1b"><img src="https://img.shields.io/badge/Gist-Update_AU_Packages-2ea44f" alt="Update AU Packages"></a>
    </div>
  </div>
</div>

## Folder Structure

* automatic - where automatic packaging and packages are kept. These are packages that are automatically maintained using [AU](https://chocolatey.org/packages/au).
* icons - Where you keep icon files for the packages. This is done to reduce issues when packages themselves move around.
* manual - where packages that are not automatic are kept.
* setup - items for prepping the system to ensure for auto packaging.

For setting up your own automatic package repository, please see [Automatic Packaging](https://chocolatey.org/docs/automatic-packages)

## Requirements

* Chocolatey (choco.exe)
* The [AU module](https://chocolatey.org/packages/au). 
* PowerShell v5+

#### AU Installation Info & Powershell Function

  * <strong>Module path</strong> : `C:\ProgramData\chocolatey\lib\au\tools\AU`
  * AU version 2022.10.24 installed successfully at `C:\Program Files\WindowsPowerShell\Modules\AU`

  | Branch                    | Alias     |
  |---------------------------|-----------|
  | Get-AUPackages            | gau lsau  |
  | Get-RemoteChecksum        | -         |
  | Get-RemoteFiles           | -         |
  | Get-Version               | -         |
  | Push-Package              | -         |
  | Set-DescriptionFromReadme | -         |
  | Test-Package              | -         |
  | Update-AUPackages         | updateall |
  | Update-Package            | update    |

  To learn more about AU:      
  ```
  man about_AU
  ```

  See help for any function:
  ```
  man updateall
  ```

## Acknowledgments
Inspiration, code snippets, icon, etc.
* [https://github.com/chocolatey-community/chocolatey-au](https://github.com/chocolatey-community/chocolatey-au)
* [https://github.com/chocolatey-community/chocolatey-test-environment](https://github.com/chocolatey-community/chocolatey-test-environment)
* [https://github.com/chtof/chocolatey-packages](https://github.com/chtof/chocolatey-packages)
* [https://github.com/dgalbraith/chocolatey-packages](https://github.com/dgalbraith/chocolatey-packages)
* [https://www.youtube.com/watch?v=m2XpV2LxyEI](https://www.youtube.com/watch?v=m2XpV2LxyEI)
