function [] = arduino(freq)
clearvars a;
a = arduino('com4');
configurePin(a,'D8');
configurePin(a,'D9');
configurePin(a,'D10');

for i=:len(freq)
    f = freq(i);
    if freq <= fr
        disp('RED');
        writeDigitalPin(a, 'D8', 1);
    else
        if freq<=fb && freq>=fr
            disp('GREEN');
            writeDigitalPin(a, 'D9', 1);
        else 
            if freq>=fb
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