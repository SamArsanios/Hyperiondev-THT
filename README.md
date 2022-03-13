# Hyperiondev-THT

This repsitory contains solutions to the Hyperiondev Code Reviewer test assessment.

## Section A: Code Review
Option 1: Python Task


You've done well implementing a solution to the given problem, but there are still some changes that need to be made for a better outcome. My observations are as follows:

### Correctness
1. You have indentation errors on lines 3, 4, 5, 6, 7 and 8 in your code. Please check for the following error on your console or the IDE that you are using `IndentationError: unindent does not match any outer indentation level`. The line number will be shown along with the error message. To avoid indentation errors, please consider using an IDE that detects a python file and automatically indents your code or you can indent manually but it is hectic and time consuming when you are writing code that is hundreds of lines long.

2. On line 5, in the code `x = "".join(sorted())`,  the `sorted()` is expecting a parameter so please make sure that you pass in a parameter. If you further want to understand the error check the console or IDE. You should be able to see an error that says `TypeError: sorted expected 1 argument, got 0`. 

### Efficiency
1. While you have a made a great effort in your use of python syntax, the use of class in such a small program is farfetched. You may consider using a simple method to come up with a solution to the problem.


### Style
1. You code is mostly neat but please consider being consistent with your indentation. On top of preventing syntax errors indentation makes our code look neat and readable.

### Documentation
1. Please consider adding comments to the code because comments give clarity to your code. It helps you remember certain things that you might have forgotten after writing so many lines of code. It is also good practice because it helps and guides other developers.

## Section B: Project
This is a cabin finder or locator app where users are able to create/add cabins, see a list of different types of cabins and can add them to their favourites list.

- [Project Repository Link](https://github.com/SamArsanios/cabin-quest) 
- [Live Application Link](https://cabinquest.herokuapp.com/)