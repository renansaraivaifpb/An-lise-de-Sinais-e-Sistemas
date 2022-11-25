clc
clear

yOut = []
tOut = []

for t=-5:0.01:1
    y=t
    yOut = [yOut, y]
    tOut = [tOut, t]
    
end

plot(tOut, yOut)
set(gca(), "data_bounds", matrix([-10, 10, -0.1, 10], 2, -1));
gca().box = "off"
