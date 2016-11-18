function out = search(A, low, high, x)
 % returns the largest t s.t. A(t) < x where low <= t <= high
 % A is assumed to be sorted
 
 if high - low == 1
  if A(high) == x out = high;
  else
  out = low;
  end;
 else
   mid = floor((low + high)/2);
   if A(mid) == x out = mid;
   elseif A(mid) < x out = search(A, mid + 1, high, x);
       else out = search(A, low, mid - 1, x);
   end      
 end;
