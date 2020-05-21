all cli script working with Linux

## Mount Host dir to Container 

### Run in powershell in Win10
docker run -dit --name "my-hugo" --publish-all --volume //c/Users/pantasio/workspaceC/docker-hugo/src:/src --volume //c/Users/pantasio/workspaceC/docker-hugo/docs:/src/docs pantasio/hugo:0.1
