**free
//****************************************************************************//
// Complete RPGLE example demonstrating all aspects of %LOOKUP
//****************************************************************************//

dcl-s ctdata packed(2:0) dim(5) inz(*zero);   // Array with 5 packed decimal elements
dcl-s result packed(3:0);                      // Variable to store lookup result
dcl-s searchVal packed(2:0);                   // Value to search
dcl-s i packed(3:0);                           // Loop index

// Initialize array
ctdata(1) = 30;
ctdata(2) = 10;
ctdata(3) = 20;
ctdata(4) = 50;
ctdata(5) = 20;  // duplicate value

//----------------------------------------------------------------------//
// Example 1: Search whole array for first occurrence of 20
//----------------------------------------------------------------------//
searchVal = 20;
result = %lookup(searchVal : ctdata);   // whole-array search
if result = 0;
   dsply (%char(searchVal) + ' not found in the array');
else;
   dsply (%char(searchVal) + ' found at first occurrence, position: ' + %char(result));
endif;

//----------------------------------------------------------------------//
// Example 2: Search with specified bounds (from index 2 to 5) for 20
//----------------------------------------------------------------------//
result = %lookup(searchVal : ctdata : 2 : 5);  
if result = 0;
   dsply (%char(searchVal) + ' not found between index 2 and 5');
else;
   dsply (%char(searchVal) + ' found within bounds 2-5 at position: ' + %char(result));
endif;

//----------------------------------------------------------------------//
// Example 3: Search for a value not in array (e.g., 60)
//----------------------------------------------------------------------//
searchVal = 60;
result = %lookup(searchVal : ctdata);   
if result = 0;
   dsply (%char(searchVal) + ' not found in the array');
else;
   dsply (%char(searchVal) + ' found at position: ' + %char(result));
endif;

//----------------------------------------------------------------------//
// Example 4: Find and display ALL occurrences of 20
//----------------------------------------------------------------------//
searchVal = 20;
dsply ('All occurrences of ' + %char(searchVal) + ':');
for i = 1 to %elem(ctdata);
   if ctdata(i) = searchVal;
      dsply ('Found at position: ' + %char(i));
   endif;
endfor;

//----------------------------------------------------------------------//
// Display all array elements with index
//----------------------------------------------------------------------//
dsply 'Full array contents:';
for i = 1 to %elem(ctdata);
   dsply ('Index ' + %char(i) + ' = ' + %char(ctdata(i)));
endfor;

*inlr = *on;
