# Advanced_Building_Blocks
Advanced Building Blocks projects completed as part of <a href="http://www.theodinproject.com/ruby-programming/advanced-building-blocks?ref=lc-pb">The Odin Project.</a>
##Project 1: Bubble Sort

1. Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).

2. Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. Expect that the block's return will be similar to the spaceship operator you learned about before -- if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.

##Project 2: Enumerable Methods
1.Create a script file to house your methods and run it in IRB to test them later.

2. Add your new methods onto the existing Enumerable module. Ruby makes this easy for you because any class or module can be added to without trouble ... just do something like:
 
   module Enumerable<br />
      def my_each<br />
        # your code here<br />
      end<br />
    end<br />

3. Create #my_each, a method that is identical to #each but (obviously) does not use #each. You'll need to remember the yield statement. Make sure it returns the same thing as #each as well.

4. Create #my_each_with_index in the same way.

5. Create #my_select in the same way, though you may use #my_each in your definition (but not #each).

6. Create #my_all? (continue as above)

7. Create #my_any?

8. Create #my_none?

9. Create #my_count

10. Create #my_map

11. Create #my_inject

12. Test your #my_inject by creating a method called #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40

13. Modify your #my_map method to take a proc instead.

14. Modify your #my_map method to take either a proc or a block, executing the block only if both are supplied (in which case it would execute both the block AND the proc).


