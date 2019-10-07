from matrix import *
import os
import time



def show_neighbors(scale):
        #main stuff
    a_matrix = Matrix(scale)

    #just put the index as the value 
    for index in range(scale*scale):
        a_matrix.assign_index(index, index)

    for index in range(scale**2):
        a_matrix.print_neighbors_of_index(index)
        time.sleep(.05)
        os.system('clear')
        
def main ():
    scale = 10
    show_neighbors(scale)
#execute starting from these lines if this module is run as a script
if __name__ == "__main__":
    main()
