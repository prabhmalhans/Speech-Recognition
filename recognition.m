function recognition(array,samples,symbols)
x=array;

samples;
symbols;
soundfiles = samples*symbols;
d= [zeros(1,soundfiles)];

for k = 1:soundfiles
     savefile=sprintf('mfcc_%d',k);
     load(savefile)
     d(k)=norm(x-variable);
end
[minimum,index]=min(d);
d
identified_symbol=mod(index,symbols);
if identified_symbol==0
    identified_symbol=symbols;
else
    identified_symbol;
end
if (minimum < 2.4)
switch(identified_symbol)
    case 1
        disp('She is a girl')
    case 2
        disp('Ok Google!')
    case 3 
        disp('Baby is crying')
end
else
    disp('say it again')
end


