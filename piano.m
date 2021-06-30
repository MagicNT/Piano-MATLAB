

%//##################################//
%//##################################//
%//#@#//                        //#@#// 
%//#@#//    TITLE:  PIANO       //#@#// 
%//#@#//    AUTHOR: TONY NASR   //#@#// 
%//#@#//                        //#@#// 
%//##################################//
%//##################################//


function [] = piano()  

    clc;
    clear;
    close all;
    figure ('Name', 'Piano keyBoard');
    axis([0 14 0 1])
    set (gca, 'xTick', 0:14)
    set (gca, 'yTick', 0:0)
    set (gca, 'xTickLabel', '')
    set (gca, 'yTickLabel', '')
    title ("THE MAGICAL PIANO KEYS")
    grid on 
    rectangle ('Position',[   .6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[  1.6 .5 .7 1 ],'FaceColor', 'black')
 
    rectangle ('Position',[  3.6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[  4.6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[  5.6 .5 .7 1 ],'FaceColor', 'black')

    rectangle ('Position',[  7.6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[  8.6 .5 .7 1 ],'FaceColor', 'black')

    rectangle ('Position',[ 10.6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[ 11.6 .5 .7 1 ],'FaceColor', 'black')
    rectangle ('Position',[ 12.6 .5 .7 1 ],'FaceColor', 'black')
    
    
    while 1
       [x y] = ginput(1);
       
       if (y >= .5 && y <= 1)         
            if (x >= .6 && x <= 1.2)
                           black_tone(3)
            elseif (x >= 1.6 && x <= 2.2)
                           black_tone(4)             
            elseif (x >= 3.6 && x <= 4.2)
                           black_tone(5)
            elseif (x >= 4.6 && x <= 5.2)
                           black_tone(6)
            elseif (x >= 5.6 && x <= 6.2)
                           black_tone(8)           
            elseif (x >= 7.6 && x <= 8.2)
                           black_tone(10)
            elseif (x >= 8.6 && x <= 9.2)  
                           black_tone(12)            
            elseif (x >= 10.6 && x <= 11.2)
                           black_tone(13)
            elseif (x >= 11.6 && x <= 12.2)   
                           black_tone(14)
            elseif (x >= 12.6 && x <= 13.2)   
                           black_tone(15)       
            endif             
        else
            if (x >= 0 && x <= 1)
                           white_tone(3)        
            elseif (x > 1 && x <= 2)
                           white_tone(4)
            elseif (x > 2 && x <= 3)
                          white_tone(5)              
            elseif (x > 3 && x <= 4)
                          white_tone(6)
            elseif (x > 4 && x <= 5)
                          white_tone(8)
            elseif (x > 5 && x <= 6)
                          white_tone(10)            
            elseif (x > 6 && x <= 7)
                          white_tone(12)
            elseif (x > 7 && x <= 8)  
                          white_tone(13)            
            elseif (x > 8 && x <= 9)
                          white_tone(14)
            elseif (x > 9 && x <= 10)   
                          white_tone(15)
            elseif (x > 10 && x <= 11)   
                          white_tone(16)            
            elseif (x > 11 && x <= 12)   
                          white_tone(17)  
            elseif (x > 12 && x <= 13)   
                          white_tone(18)  
            elseif (x > 13 && x <= 14)   
                          white_tone(19)              
            endif                              
        endif         
    endwhile  
    
    
endfunction


function [] = white_tone (n)
    freq = (440*2^(n/12));
    fs   =  8192;
    t    =  [0:1/fs:.5];
    y    =  sin(2*pi*freq*t);
    sound (y)
endfunction


function [] = black_tone (n)
    freq = (300*2^(n/5));
    fs   =  8192;
    t    =  [0:1/fs:.5];
    y    =  sin(2*pi*freq*t);
    sound (y)
endfunction









