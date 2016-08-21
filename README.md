# Sample Dockerised Node.js project on Windows
With this you can get quickly up and running with Node.js development in a Dockerised environment

### How to install
- Download and install Docker for Windows: https://www.docker.com/products/docker#/windows
- Once Docker is installed, make sure you go to `Settings > Shared Drives` and share the drive on which you will be running the project
- Go inside the project's folder, and run: `run.bat` in Windows Powershell
- When you visit http://localhost in your browser, you should see: `"it is aliiiive"`

### How to develop
- Edit the source code
- Type in `rs` into the Powershell console (to reload the running server, which was automatically started by `nodemon`)
- Refresh the browser
