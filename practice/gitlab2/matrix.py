

class Matrix():
    #contains an nxn matrix along with methods to print neighbors
    INITIALIZER = None
    def __init__(self, n = 5):
        self.scale = n #use self to denote an INSTANCE VARIABLE, available to any member function for this class.
        self.matrix_data = [self.INITIALIZER]*(n*n) #populate initially empty list, size (nxn)
    
    def assign_index(self, index, value):
        #try to assign value to particular index, fail if out of bounds
        try:
            self.matrix_data[index] = value
        except IndexError:
            print("Index out of range.")
    
    def max_elem_size(self):
        #complete here using python style for loop. Return the maximum size of an element in array
        max_size = 0
        for elem in self.matrix_data:
            elem_size = len(str(elem))
            if elem_size >= max_size:
                max_size = elem_size
        return max_size

    def print_neighbors_of_index(self, index):
        #given an index, prints the matrix containing only elements at that index and its neighbors.
        neighbors_matrix = NeighborsMatrix(self.matrix_data, index, self.scale)
        neighbors_matrix.print_matrix()


    def print_matrix(self):
        #prints pretty matrix, including method to calculate size of each element
        #if you never need to access a method anywhere else, you can define within another method.
        def create_vertical_separator(max_elem_size, num_elem):
            sep_string = ' '
            for i in range(num_elem):
                sep_string += ('-'*max_elem_size)+' '
            return sep_string
        
        max_elem_size = self.max_elem_size()
        vertical_separator = create_vertical_separator(max_elem_size, self.scale)
        
        print(vertical_separator)
        for row in range(self.scale):
            line_str = '|'
            sub_list = self.matrix_data[(self.scale*row+0):(self.scale*row+self.scale)]
            for elem in sub_list:
                if elem == self.INITIALIZER:
                    elem = ''
                line_str += str(elem)+(' '*(max_elem_size-len(str(elem))))+'|'
            print(line_str)
            print(vertical_separator)
        
    

                   
    #testing, delete later
    def print_matrix_elements(self):
        print(self.matrix_data)


class NeighborsMatrix(Matrix):
    #contains an nxn matrix with data for only the element at a given index and its neighbors
    def __init__(self,initial_data, index, n):

        self.my_index = index
        super().__init__(n)
        #can call another class method inside method   
        self.matrix_data = self.get_neighbors_only_data(initial_data)
    
        
 

    def get_neighbors_only_data(self, initial_data):
        #return matrix data with only neighbors and current index.
        neighbors_only_matrix = [self.INITIALIZER]*(self.scale*self.scale)
        neighbor_set = self.get_set_of_neighbors()
        neighbor_set.add(self.my_index) #to print the current index as well
        for elem in neighbor_set:
            neighbors_only_matrix[elem] = initial_data[elem]
        
        return neighbors_only_matrix
            


    def get_set_of_neighbors(self):
        #returns a set containing the indices of an element's neighbors
        
        #what we know:
        #neighbor definitions
        #notice that these might be out of bounds for the matrix. eg. top_neighbor for my_index == 0 is -4
        left_neighbor = self.my_index - 1
        right_neighbor = self.my_index + 1
        top_neighbor = self.my_index - self.scale #scale defined in parent class
        bottom_neighbor = self.my_index + self.scale 
        
        #illustrates using sets
        neighbors_top_left = set([bottom_neighbor, right_neighbor])
        neighbors_top_right = set([bottom_neighbor, left_neighbor])
        neighbors_bottom_left = set([top_neighbor, right_neighbor])
        neighbors_bottom_right = set([top_neighbor, left_neighbor])

        all_neighbors = neighbors_top_left | neighbors_top_right | neighbors_bottom_left #union that contains all neighbors

        if self.is_index_top_edge(): #hide logic behind functions
            if self.is_index_left_edge():
                return neighbors_top_left #top left corner
            elif self.is_index_right_edge():
                return neighbors_top_right #top right corner
            else:
                return  neighbors_top_right | neighbors_top_left #top edge
        elif self.is_index_bottom_edge():
            if self.is_index_left_edge():
                return neighbors_bottom_left #bottom left corner
            elif self.is_index_right_edge():
                return neighbors_bottom_right #bottom right corner
            else:
                return neighbors_bottom_left | neighbors_bottom_right #bottom edge
        else:
            if self.is_index_left_edge():
                return neighbors_bottom_left|neighbors_top_left #left edge
            elif self.is_index_right_edge():   
                return neighbors_bottom_right|neighbors_top_right #right edge
            else:
                return all_neighbors #central indices




    #defs for location logic
    def is_index_left_edge(self):
        if self.my_index%self.scale == 0:
            return True
        return False

    def is_index_right_edge(self):
        if self.my_index%self.scale == (self.scale-1):
            return True
        return False
    
    def is_index_top_edge(self):
        if (self.my_index >= 0) and (self.my_index < self.scale):
            return True
        return False
    
    def is_index_bottom_edge(self):
        if (self.my_index >= self.scale**2-self.scale) and (self.my_index < self.scale**2):
            
            return True
        return False
        