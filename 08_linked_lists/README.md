# Data Structures and Algorithms - Linked Lists
- [] Review Big O notation 
- [] Go over some of the most popular Data Structures for Interviews 
- [] Review how to break down an algorithm question 
- [] Implement a linked list

Given an array `[2, 9, 1, 3]` create a custom method/function to sort the array without using a built in sort method such as `.sort`. This can be done in JavaScript or Ruby 

Once done, do it again but using another algorithm. 

## BIG O time complexity 
>Note: the following video has flashing lights and colors. 
[Visualization of 24 Sorting Algorithms In 2 Minutes](https://www.youtube.com/watch?v=BeoCbJPuvSE)

### Time Complexity 
    The amount of time it takes the algo to run.

![Big-O Complexity Chart](https://miro.medium.com/max/1200/1*5ZLci3SuR0zM_QlZOADv8Q.jpeg)
- [Big-O Complexity Chart](http://bigocheatsheet.com/) by Eric Rowell

 - O(1) Constant 
 - O(n) Linear time
 - O(log n) [Logarithmic time](https://www.youtube.com/watch?v=M4ubFru2O80) 
 - O(n^2) Quadratic time 
 - O(n^n) Exponential time

 ### Popular DS and A
 - Arrays 
 - LinkedList
 - Hash
 - Stacks/Queue 
 - Trees 
    - Binary 
 - Graphs 

 ### How to approach a DS and A question

 - Write the question down and confirm your assumptions  
 - Write out/explain steps for the solution before coding 
 - Code out solution 
 - Run test case examples 
 - Give Big - O

### Singly Linked List
![Singly Linked List](https://media.geeksforgeeks.org/wp-content/cdn-uploads/20200922124319/Singly-Linked-List1.png)

### Applications of linked list in computer science

- Implementation of stacks and queues
- Implementation of graphs : Adjacency list representation of graphs is most popular which is uses linked list to store adjacent vertices.
- Dynamic memory allocation : We use linked list of free blocks.
- Maintaining directory of names
- Performing arithmetic operations on long integers
- Manipulation of polynomials by storing constants in the node of linked list
- representing sparse matrices

### Applications of linked list in real world

- Image viewer – Previous and next images are linked, hence can be accessed by next and previous button.
- Previous and next page in web browser – We can access previous and next url searched in web browser by pressing back and next button since, they are linked as linked list.
- Music Player – Songs in music player are linked to previous and next song. you can play songs either from starting or ending of the list.

## Resources

- [LinkedList applications](https://www.geeksforgeeks.org/applications-of-linked-list-data-structure/)
- [Circular Linked lists](https://medium.com/amiralles/mastering-data-structures-in-ruby-circular-linked-lists-8bd35769cc5#:~:text=The%20defining%20factor%20for%20circular,head%20over%20and%20over%20again.)