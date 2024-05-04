import-module au

$releases = 'https://download.biolab.si/download/files/'

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases
  $regex = '^Orange3-[\d.]+-Miniconda-x86_64\.exe$'

  $file = $download_page.Links | Where-Object href -match $regex | Select-Object -Last 1 -expand href
  $urls = $releases + $file
  $version = $file -split '-' | Select-Object -Last 1 -Skip 2

  return @{ Version = $version ; URL32 = $urls }
}

function global:au_SearchReplace {
  @{
    "tools\chocolateyinstall.ps1" = @{
      "(^(\s)*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(^(\s)*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

update