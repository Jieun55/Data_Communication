A=1;
T=0.1;
f=1/T;
N=100;
t=0:0.0001:10*T;
sum_temp=0;

for k=0:N
    if mod(k,4)==1
        Ak = A* 2/abs((k*pi));
    elseif mod(k,4)==3
        Ak = -A* 2/abs((k*pi));
    else
        Ak =0;
    end
    if k==0
        Ak=1;
    end
    sum_temp= sum_temp + Ak * cos(2*pi*f*k*t);
end
figure
plot(t,sum_temp)
grid on
xlabel('time')