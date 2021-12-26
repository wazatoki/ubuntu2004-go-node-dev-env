$ProjectName = "example_project_name"

$data = Get-Content .\.devcontainer\devcontainer.json | foreach { $_ -creplace "regulus", $ProjectName }
$data | Out-File .\.devcontainer\devcontainer.json

$data = Get-Content .\.devcontainer\docker-compose.yml | foreach { $_ -creplace "regulus", $ProjectName }
$data | Out-File .\.devcontainer\docker-compose.yml

$data = Get-Content .\.devcontainer\build\Dockerfile | foreach { $_ -creplace "regulus", $ProjectName }
$data | Out-File .\.devcontainer\build\Dockerfile
