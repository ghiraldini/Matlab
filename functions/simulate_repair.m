function T = simulate_repair(n, s, l1, l2)
% simulation of a repair problem
% F = prob distribution defining failure of machine, i.e., 
% F(t) = prob(time taken for machine to break down = t)
% G = prob distribution defining the time taken to repair
% ie., G(t) = prob(time taken to repair = t)
% n = number of machines, s = additional number of machines
% goal is to compute time T at which the sytem fails 
% system fails when more than s machines are in repair
 t = 0; r = 0; tstar = Inf;
 mqueue = [];
 for j=1:n
     mqueue(end+1) = uniform(l1);
 end;
 mqueue(end+1)=tstar;
 mqueue = sort(mqueue);
 while 1
     t1 = mqueue(1);
     if t1 < tstar
         t = mqueue(1);
         r = r + 1;
         if r == s+1 
             T = t; return;
         else
             x = uniform(l1);
             mqueue(end+1)=t+x;
             mqueue = mqueue(2:end);
             mqueue = sort(mqueue);
         end;
         if r == 1
             y = uniform(l2);
             tstar = t+y;
         end;
     else
         t = tstar;
         r = r - 1;
         if r == 0
             tstar = Inf;
         else
             y = uniform(l2);
             tstar = t + y;
         end;
     end;
 end;
 
             