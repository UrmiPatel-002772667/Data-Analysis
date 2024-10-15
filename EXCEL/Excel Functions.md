# Excel functions for data analysis

## Text Functions
- **LEN**  
  Returns the number of characters in a cell.  
  `=LEN(Select Cell)`

- **TRIM**  
  Removes extra spaces from a text string, leaving only single spaces between words.  
  `=TRIM(Select Cell)`

- **UPPER**  
  Converts text to uppercase.  
  `=UPPER(Text)`

- **PROPER**  
  Capitalizes the first letter of each word in a text string.  
  `=PROPER(Text)`
  
- **LEFT**  
  Extracts a specified number of characters from the start of a text string.  
  `=LEFT(text, [num_chars])`
  
- **RIGHT**  
  Extracts a specified number of characters from the end of a text string.  
  `=RIGHT(text, [num_chars])`
  
- **MID**  
  Extracts a substring from a text string, starting at any position.  
  `=MID(text, start_num, num_chars)`
  
- **CONCATENATE**  
  Joins two or more text strings into one string.  
  `=CONCATENATE(text1, text2, ...)`

- **FIND**  
  Finds the starting position of a substring within a text string.  
  `=FIND(find_text, within_text, [start_num])`
  
- **SEARCH**  
  Similar to FIND, but allows for case-insensitive searches.  
  `=SEARCH(find_text, within_text, [start_num])`

## Logical Functions

- **IF**  
  Returns one value if a condition is true and another value if it's false.  
  `=IF(logical_test, value_if_true, value_if_false)`
  
- **AND**  
  Returns TRUE if all conditions are true.  
  `=AND(logical1, [logical2], ...)`
  
- **OR**  
  Returns TRUE if any condition is true.  
  `=OR(logical1, [logical2], ...)`
  
- **NOT**  
  Reverses the logic of its argument.  
  `=NOT(logical)`

- **IFERROR**  
  Returns a specified value if an error is found, otherwise returns the result of the formula.  
  `=IFERROR(value, value_if_error)`

## Statistical Functions

- **SUMIF**  
  SUMIF determines if a condition is true or false before adding the values in a range.  
  `=SUMIF(range, criteria, [sum_range])`

- **AVERAGE**  
  Calculates the average (mean) of a group of numbers.  
  `=AVERAGE(number1, [number2], ...)`

- **AVERAGEIF**  
  AVERAGEIF determines the average of a range depending on a true or false condition.  
  `=AVERAGEIF(range, criteria, [average_range])`
  
- **MEDIAN**  
  Returns the median of the given numbers.  
  `=MEDIAN(number1, [number2], ...)`
  
- **MODE**  
  Returns the most frequently occurring value in a dataset.  
  `=MODE(number1, [number2], ...)`
  
- **STDEV**  
  Estimates the standard deviation based on a sample.  
  `=STDEV(number1, [number2], ...)`

- **VAR**  
  Estimates variance based on a sample.  
  `=VAR(number1, [number2], ...)`

- **ANOVA**  
  ANOVA ( Analysis of variance ) in Excel is a statistical method that is used to test the difference between two or more means.

- **COUNT**  
  Counts the number of cells that contain numbers.  
  `=COUNT(value1, [value2], ...)`

- **COUNTIF**  
  Excel has a built-in function called COUNTIF that counts the given cells.  
  `=COUNTIF(range,criteria)`
    
- **COUNTA**  
  Counts the number of cells that are not empty.  
  `=COUNTA(value1, [value2], ...)`
  
- **COUNTBLANK**  
  Counts the number of empty cells in a range.  
  `=COUNTBLANK(range)`

## Lookup & Reference Functions

- **VLOOKUP**  
  VLOOKUP permits searching across several columns.  
  `=VLOOKUP(lookup_value, table_array, COL_index_num, [range_lookup])`
  
- **HLOOKUP**  
  Searches for a value in the top row of a table and returns a value in the same column from a specified row.  
  `=HLOOKUP(lookup_value, table_array, row_index_num, [range_lookup])`

- **XLOOKUP**  
  XLOOKUP is a more flexible and improved version of the VLOOKUP formula.  
  `=XLOOKUP(lookup_value, lookup_array, return_array, [if_not_found],[match_mode],[search_mode]`
  
- **INDEX**  
  Returns the value of an element in a table or array, selected by the row and column number indexes.  
  `=INDEX(array, row_num, [column_num])`
  
- **MATCH**  
  Searches for a specified item in a range of cells and returns the relative position of that item.  
  `=MATCH(lookup_value, lookup_array, [match_type])`

- **OFFSET**  
  Returns a reference to a range that is a specified number of rows and columns from a cell or range of cells.  
  `=OFFSET(reference, rows, cols, [height], [width])`

- **CHOOSE**  
  Chooses a value or action to perform from a list of values, based on an index number.  
  `=CHOOSE(index_num, value1, [value2], ...)`

## Date & Time Functions

- **TODAY**  
  Returns the current date.  
  `=TODAY()`
  
- **NOW**  
  Returns the current date and time.  
  `=NOW()`
  
- **DAY**  
  Returns the day of the month, a number from 1 to 31.  
  `=DAY(serial_number)`
  
- **MONTH**  
  Returns the month, a number from 1 (January) to 12 (December).  
  `=MONTH(serial_number)`
  
- **YEAR**  
  Returns the year of a date.  
  `=YEAR(serial_number)`

- **DATE**  
  Returns the serial number of a particular date.  
  `=DATE(year, month, day)`

- **EDATE**  
  Returns the serial number of the date that is the indicated number of months before or after the start date.  
  `=EDATE(start_date, months)`

- **EOMONTH**  
  Returns the serial number of the last day of the month before or after a specified number of months.  
  `=EOMONTH(start_date, months)`

## Array Formulas

- **TRANSPOSE**  
  Converts a vertical range of cells to a horizontal range, or vice versa.  
  `=TRANSPOSE(array)`
  
- **FREQUENCY**  
  Calculates how often values occur within a range of values, and then returns a vertical array of numbers.  
  `=FREQUENCY(data_array, bins_array)`

- **MMULT**  
  Returns the matrix product of two arrays.  
  `=MMULT(array1, array2)`
  
- **SUMPRODUCT**  
  Multiplies corresponding components in the given arrays, and returns the sum of those products.  
  `=SUMPRODUCT(array1, [array2], ...)`

## Advanced Statistical Functions

- **PERCENTILE**  
  Returns the k-th percentile of values in a range.  
  `=PERCENTILE(array, k)`
  
- **QUARTILE**  
  Returns the quartile of a dataset.  
  `=QUARTILE(array, quart)`
  
- **RANK**  
  Returns the rank of a number in a list of numbers.  
  `=RANK(number, ref, [order])`
  
- **LINEST**  
  Returns the statistics for a line by using the least squares method to calculate a straight line that best fits your data.  
  `=LINEST(known_y's, [known_x's], [const], [stats])`

## Difference between VLOOKUP and XLOOKUP
1. XLOOKUP can look for values within columns to the left and right of the lookup_array, while VLOOKUP is limited to values on the right side of the first column in the selected table_array.
2. The XLOOKUP has an optional “if_not_found” feature which lets you customize your output text if a value is not found, while the VLOOKUP defaults to showing an #N/A (error sign).
3. The VLOOKUP doesn’t allow you to specify what type of search you want, while the XLOOKUP allows you to specify whether you want to start from the first or last item on a list, or in ascending or descending order.
