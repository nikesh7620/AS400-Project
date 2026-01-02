**free                                                                                     
                                                                                           
//----------------------------------------------------------------------------//           
// Program Name : ARRYBIF01                                                   //           
// Author Name  :                                                             //           
// Create Date  : 02-JAN-2025                                                 //           
// Description  : SPLIT Built in Function                                     //           
//----------------------------------------------------------------------------//           
                                                                                           
  dcl-s Color char(10) dim(5);                                                             
  dcl-s String char(40);                                                                   
                                                                                           
     String = 'Green Blue Pink Black Orange';                                              
     Color  = %split(String);                                                              
                                                                                           
     dsply Color(1);                                                                       
     dsply Color(2);                                                                       
     dsply Color(3);                                                                       
     dsply Color(4);                                                                       
     dsply Color(5);                               
                                                   
    *inlr = *on;                                   