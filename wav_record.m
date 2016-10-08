function [voice]= wav_record(v)
disp('wait until "speak" shows up\n');
pause(5)
disp('speak now...\n')
record(v,4)
pause(4);
disp('done')
pause(1);
play(v)
pause(4)
voice_1=getaudiodata(v);
[b,a] = butter(4,4000/44010); %to filter high frequency noise.
voice=filter(b,a,voice_1);
figure
plot(voice)
end