function y0 = lagrange_interp()
    clc;
    
    x = input('Enter x values: ');
    y = input('Enter y values: ');
    x0 = input('Enter new x: ');
    
    y0 = 0;
    n = length(x);
    
    for j = 1 : n
        t = 1;
        for i = 1:n
            if i ~= j
                t = t * (x0 - x(i)) / (x(j) - x(i));
            end
        end
        y0 = y0 + t * y(j);
    end
end