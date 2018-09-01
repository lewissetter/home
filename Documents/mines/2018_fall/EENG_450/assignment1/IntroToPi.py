# FILE: rasPi-intro.py
# AUTHOR: Lewis Setter
# LAST EDIT: Aug 27, 2018
#
# This program extracts a list of 100 integers from a list named 'datafle.txt' into
# an array. It then takes the array and extracts the maximum value, the minimum value,
# any index of where the number 38 is located, the mode(s) and number of occurnces of
# the mode(s), the list in ascending order, and the even numbers from the list in 
# ascending order.

import io
import numpy

# The following block reads an array of 100 integers in the intArray variable
with open('datafile.txt', 'r') as numList:
    intArray = eval(numList.read())
numList.close()

# maximum value from datafile.txt
listMax = numpy.amax(intArray)

# minimum value from datafile.txt
listMin = numpy.amin(intArray)

# the index where the number 38 is located
# NOTE: this procedure only works if the number 38 occurs once within the list
indexOf38 = [intArray.index(i) for i in intArray if i == 38]
indexOf38 = indexOf38[0]

# modes of datafile.txt
# NOTE: this procedure only works if the list has one mode
occurrences = [intArray.count(i) for i in intArray]
mode = max(occurrences)
modeVal = [i for i in intArray if intArray.count(i) == mode]
modeVal = modeVal[0]

# sort the array and store it in a new variable
sortedArray = numpy.sort((intArray))

# use a list comprehension to remove all the odd numbers from the sorted array
sortedEvenArray = [i for i in sortedArray if not i%2]

# the following block prints all the required values for the assignment
print('Max: ', listMax)
print('Min: ', listMin)
print('Index of the number 38: ', indexOf38)
print('The number ', modeVal, ' appear ', mode, 'times.')
print('Here is the array after a quick sort:')
print(sortedArray)
print('Here is a list of all the even integer in ascending order:')
print(sortedEvenArray)

