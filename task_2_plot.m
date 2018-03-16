sensor_names=["ALX","ALY","ALZ","ARX","ARY","ARZ","EMG0L","EMG1L","EMG2L","EMG3L","EMG4L","EMG5L","EMG6L","EMG7L","EMG0R","EMG1R","EMG2R","EMG3R","EMG4R","EMG5R","EMG6R","EMG7R","GLX","GLY","GLZ","GRX","GRY","GRZ","ORL","OPL","OYL","ORR","OPR","OYR"];
names_class=["ABOUT","HEARING","GOOUT","FIND","FATHER","DECIDE","DEAF","COP","CAN","AND"];
for j=1:length(sensor_names)
    xyz=figure('Visible','off');
    for i =1:length(names_class)
        file_name=strcat(names_class(i),'.csv');
        M=csvread(file_name);
        figure_name=strcat(sensor_names(j),'.jpg');        
        temp=M(j:700:10500,:);
        temp=transpose(temp);
        subplot(2,5,i)
        plot(temp)   
        title(strcat(names_class(i)))    
    end
    saveas(xyz,char(figure_name));
end



