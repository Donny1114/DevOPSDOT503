# DevOps DOT503 Assessment 2
# Build and Deployment Instructions

 This project can be accessed in GitHub with this link https://github.com/Donny1114/DevOPSDOT503.git
 This project automates build processes using `Makefile`.
 To create and package the application, adhere to the processes 
 listed below.
   ## Requirements

   Verify that `make` and `gcc` are installed on your computer.
   If you are using unit tests, make sure you have a testing framework set up and running.
   Make commands might not work in windows, if using windows use Ubunto WSL and run in WSL terminal. 
   This should work in Linux and Mac Operating system.

## Build Steps
  
  1. Build the application:

      make build
      

 2. Run unit tests:

     
      make test
    

   3. Create a deployable package:

      make package
      
   The deployable package will be created as `app.tar.gz`.

   
   # You can clone this project by using the github link above.

