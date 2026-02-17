H = zeros(10, 10)
for a = 1:10
    for b = 1:10
        H(a,b) = 1 / (a + b - 1)
    end
end
disp(H)








