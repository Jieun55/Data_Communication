clear
close all

MAX=100; % 최댓값 설정 3,5,9,100로 수정 후 결과 확인
A=1;
f=1;
Ts = 1/100;
t = 0:Ts:2; % 시간 0<t<2
SIGMA=0;

for k = 1:2:MAX
    SIGMA = SIGMA + sin(2*pi*k*f*t)/k;
end
x = A * 4/pi * SIGMA;
plot(x)