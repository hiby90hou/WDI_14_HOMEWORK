a	      b	 a AND b
true	true	true
true	false	false
false	true	false
false	false	false
a	      b	 a OR b
true	true	true
true	false	true
false	true	true
false	false	false
a	      b	 a != b
3	      3	   true
1	      5	   true
2	     "2"	 false
a	      b	 !a AND (a OR b)
true	true	 false
true	false	 false
false	true	 true
false	false	 false
