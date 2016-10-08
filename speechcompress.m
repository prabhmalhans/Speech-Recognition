function [x]= speechcompress(x)

x=x/abs(max(x)); %normalize the input sound

y=silenceremove(x); %remove silenced part between words spoken
j=length(y)

while (y(j)<0.2)  %remove end part silence.
   j=j-1;
end
%j=j+2000;
x=y(1:j);
figure
plot(x)