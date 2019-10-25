# VirtualBox ROS Setup HOWTO
This is a walkthrough of how to setup a virtual machine on your computer that will behave a lot like the embedded operating system on the rover's computer.
1. Install the virtual box software at: https://www.virtualbox.org/wiki/Downloads
2. Download and unzip the virtual ROS workstation: https://downloads.ubiquityrobotics.com/vm.html
  - Note: unzip folder somewhere you permanent. Preferably \Users\{USERNAME}\VirtualBox VMs
3. Launch VirtualBox and click Machine -> Add
4. In the file explorer that popped up navigate to where you unzipped the workstation folder.
5. Inside that directory, select the .vbox file.
6. Walk through the setup steps that VirtualBox gives you to setup a user and machine preferences. 
7. You now have a virtual environment to work out of that will behave much like the OS on the robot!
8. Please setup the organization repositories on this VM. Simply open a terminal in the VM and walk back through gitlab1 git repo setup. 

## A Few Notes
* It is recommended you complete the gitlabs within this virtual environment so that everyone has the same standard to work with. 
* VirtualBox allows you to save the state of the VM, so you can close this VM and reopen it later.
* The OS used by the workstation is Ubuntu.
* You can open the terminal and file navigator in the workstation to begin working. It works just like the Ubuntu WSL we also had you install. 

## VM Bugs
List known bugs/quirks of the VMs here.
* username and password are both "ubuntu" (linux does not show password keystrokes)
* No vim installed (sudo apt-get install vim)
* On select Nvidia GPUs, this version of Ubuntu will lag horribly, updating the ubuntu instance should fix.
* Networking into VirtualBox can be troublesome with proprietary network drivers.
