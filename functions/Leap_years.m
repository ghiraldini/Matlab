% Number of Leap Years 
years = 1780:2308;
leap = (rem(years,4) == 0 & ~rem(years,100) | rem(years,400) == 0);
sum(leap)

