$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName
  url          = 'https://download.biolab.si/download/files/Orange3-3.36.2-Miniconda-x86_64.exe'
  checksum     = '662fd246ae00dab492fc9192f939b995af62fb7513b81b67e66f4f4587dd7bdb'
  checksumType = 'sha256'
  fileType     = 'exe'
  silentArgs   = '/S /CurrentUser /D=%INSTALLPATH%'
}

Install-ChocolateyPackage @packageArgs
