# Blog X [3.13.2020]

### Python: Date and time format

Working with dates can be incredibly useful. Maybe you want to run a script that outputs results to a new file every few hours, but you want to keep these results separate and have different names. Using the ```datetime``` module you can create a new file each time a python script is executed by having the date and time in the filename. 

```
from datetime import date, datetime

today = date.today()
now = datetime.now()

print("Today's Date Format is: " + today.strftime("%m%d%Y") + now.strftime("_%H%M%S") )
```
The above script imports ```date```, and ```datetime``` from the ```datetime``` module. It saves the current date and current time in separate variables.

Using the ```.strftime()``` function, it formats the time using format codes to output the current date and current time in our desired format. More information on ```.strftime()``` format codes here: https://strftime.org/

Output:
```
Today's Date Format is: 03132020_215102
```
FYI ```.strptime()``` is a legacy function.

#### Resources
- https://strftime.org/
- https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior
- https://docs.python.org/3/library/datetime.html
