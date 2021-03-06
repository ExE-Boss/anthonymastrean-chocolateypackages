﻿$id     = "spaceengine"
$name   = "SpaceEngine version 0.9.7.2"
$kind   = "EXE"
$silent = "/VERYSILENT /NORESTART"

$tools  = Split-Path $MyInvocation.MyCommand.Definition

. $tools\uninstall.ps1

$uninstaller = Get-Uninstaller -Name $name

Uninstall-ChocolateyPackage -PackageName $id -FileType $kind -Silent $silent -File $uninstaller
