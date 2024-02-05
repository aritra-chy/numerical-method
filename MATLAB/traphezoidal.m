clc

syms x;
y = input('Input your function: ');
a = input('Enter lower limit: ');
b = input('Enter upper limit: ');
n = input('Enter sub-interval: ');

dx = (b - a) / n;
fa = eval(subs(y, x, a));
fb = eval(subs(y, x, b));
integration = fa + fb;

for i = 1:(n - 1)
    k = a + i * dx;
    integration = integration + 2 * eval(subs(y, x, k));
end
integration = integration * dx / 2;
disp(['Result of integration: ', num2str(integration)]);
