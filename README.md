# Sample Dockerised Node.js project on Windows
With this you can get quickly up and running with Node.js development in a Dockerised environment

### How to install
- Download and install Docker for Windows: https://www.docker.com/products/docker#/windows
- Once Docker is installed, make sure you go to `Settings > Shared Drives` and share the drive on which you will be running the project
- Inside the project's folder, run: `install.bat`

### How to develop
- Inside the project's folder, run: `run.bat`
- When you visit http://localhost in your browser, you should see: `"it is aliiiive"`
- Edit the source code
- Type in `rs` into the console where you ran `run.bat` (this reloads the running server, which was automatically started by `nodemon`)
- Refresh the browser to see the change
