function [] = arduin(a,freq)
%This is self made function.
%This function is made for using arduino.
%This function lits up the LEDs according to frequencies it get.

fr = 2;
fb = 3;
configurePin(a,'D8');
configurePin(a,'D9');
configurePin(a,'D13');

for i=1:length(freq)
    f = freq(i);
    if (f <= fr)
        disp('RED');
        writeDigitalPin(a, 'D8', 1);
    else
        if (f<=fb) && (f>=fr)
            disp('GREEN');
            writeDigitalPin(a, 'D13', 1);
        else 
            if (f>=fb)
                disp('Blue');
                writeDigitalPin(a, 'D10', 1);
            else
                writeDigitalPin(a, 'D8', 1);
                writeDigitalPin(a, 'D9', 1);
                writeDigitalPin(a, 'D10', 1);
            end
        end
    end
end