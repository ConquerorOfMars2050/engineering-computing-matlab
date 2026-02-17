H = zeros(10, 10)
for a = 1:10
    for b = 1:10
        if a < b
            H(a, b) = 0
            break
        end
        H(a, b) = 1 /(a + b - 1)
    
    end
end
disp(H)

