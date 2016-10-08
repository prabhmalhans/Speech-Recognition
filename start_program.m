clc 
clear all
choice=input('Press 1 for sample recording\nPress 2 for recognition');
switch(choice)
    case 1
        mfcc_samplerecord()  %Function to store sounds to be recognized by the recognizer 
        
    case 2
        samples=3
        symbols=3
        sound=inputsound()
        clipped_sound=speechcompress(sound)
        feature_vector=mfcc_calc(clipped_sound)
        recognition(feature_vector,samples,symbols)
end