# Make 'pry' available in order to use 'binding.pry'
require 'pry'

# - Write out/explain steps for the solution before coding 
# - Code out solution 
# - Run test case examples 
# - Give Big-O

# Implement a custom LinkedList Class with:

  # 1. A method (add_to_start) that adds a new Node to the beginning of the LinkedList.
    # Big-O Time Complexity: O(1)
  # 2. A method (remove_from_start) that removes the Node at the beginning of the LinkedList
  # 3. A method (add_to_end) that adds a new Node to the end of each LinkedList. If I need to interact with the end of the LinkedList also, would a Singly Linked List or a Doubly Linked List be better?
    # Big-O Time Complexity: O(n)
  # 4. A method (print) that prints the value of every Node.
    # Big-O Time Complexity: O(n)

class Node
  # Set attr_accessor for :value, :next_node
  attr_accessor :value, :next_node

  # Define 'initialize' to accept 'value' and 'next_node' (default nil)
  def initialize(value, next_node=nil)
    self.value = value
    self.next_node = next_node
  end
end

class LinkedList
  # Set attr_accessor for :head
  attr_accessor :head, :tail
  # Define 'initialize' to set @head = nil
  def initialize
    self.head = nil
    self.tail = nil
  end

  # Define 'add_to_start' to add a new Node to the beginning of the LinkedList.
    # Create a new 'Node' using passed 'value' argument and a
    # next_node equal to '@head'
    # Set '@head' equal to 'new_node' and return
  def add_to_start(value)
    new_node = Node.new(value, self.head)
    self.head = new_node
    if self.tail.nil?
      self.tail = new_node
    end
  end

  # Define 'remove_from_start' to remove the first Node from the LinkedList
    # Find the first node by using @head
    # set the new value of @head to the @head's next_node
    # return the removed node
  def remove_from_start
    node_to_remove = self.head
    if node_to_remove
      self.tail = nil if node_to_remove == self.tail
      self.head = node_to_remove.next_node
      node_to_remove.value
    end
  end

  # Define 'add_to_end' to add a new Node to the end of each LinkedList.
    # Create a new 'Node' using passed 'value' argument
    # Assign 'current' to equal 'self.head'
    # point current at current.next_node until we get to the end of the list (next_node is nil)
    # Then, set 'current.next_node' equal to 'new_node'
  def add_to_end(value)
    new_node = Node.new(value)
    if self.tail
      self.tail.next_node = new_node
      self.tail = new_node
    else
      self.head = new_node
      self.tail = new_node
    end
  end

  # Define 'print' to output the value of every Node
    # Assign 'current' to equal 'self.head'
    # While 'current' is not falsey, output current.value before setting 'current' equal to 'current.next_node'
  def print
    current = self.head
    while current
      puts current.value
      current = current.next_node
    end
  end
end

# Use the linked list to build an example of browser history

@history = LinkedList.new
puts "Add google and netflix to list"
@history.add_to_start("google.com")
@history.add_to_start("netflix.com")
puts "Print list:"
@history.print
puts "Remove first from list"
@history.remove_from_start
puts "Print list:"
@history.print

Pry.start