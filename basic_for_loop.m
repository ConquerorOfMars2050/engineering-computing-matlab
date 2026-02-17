n = 20;
a = zeros(1,n);
a(1) = 0;
a(2) = 1;
% Add the correct statement here

for i = 3:n
   a(i) = a(i-1)+a(i-2);
end
disp(a)

% Do not write anything below this line.
