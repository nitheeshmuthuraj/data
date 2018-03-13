cd outputclass
fopen('combined.csv','w')             
dlmwrite('combined.csv',vertcat(table2array(readtable("ABOUT.csv")),table2array(readtable("AND.csv")),table2array(readtable("HEARING.csv")),table2array(readtable(,"GOOUT.csv")),table2array(readtable("FIND.csv")),table2array(readtable("FATHER.csv")),table2array(readtable("DECIDE.csv")),table2array(readtable("DEAF.csv")),table2array(readtable("COP.csv")),table2array(readtable("CAN.csv"))))
cd ..

                           