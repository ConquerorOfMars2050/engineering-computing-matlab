u = [-3:0.1:3];
v = u.*exp(-u.^2);
plot(u, v)
xlabel('u values')
ylabel('v values')
