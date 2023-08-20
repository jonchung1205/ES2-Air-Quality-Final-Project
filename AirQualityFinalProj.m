load("AirQuality.mat");

data = readtable('Air_Quality_ppb.csv');

%% 
%Summer 2009 Data
Summer2009 = find(data.TimePeriod == "Summer 2009");
Summer2009Data = data(Summer2009, :); 

Summer2010 = find(data.TimePeriod == "Summer 2010");
Summer2010Data = data(Summer2010, :); 

Summer2011 = find(data.TimePeriod == "Summer 2011");
Summer2011Data = data(Summer2011, :); 

Summer2012 = find(data.TimePeriod == "Summer 2012");
Summer2012Data = data(Summer2012, :); 

Summer2013 = find(data.TimePeriod == "Summer 2013");
Summer2013Data = data(Summer2013, :); 

Summer2014 = find(data.TimePeriod == "Summer 2014");
Summer2014Data = data(Summer2014, :); 

Summer2015 = find(data.TimePeriod == "Summer 2015");
Summer2015Data = data(Summer2015, :); 

Summer2016 = find(data.TimePeriod == "Summer 2016");
Summer2016Data = data(Summer2016, :); 

Summer2017 = find(data.TimePeriod == "Summer 2017");
Summer2017Data = data(Summer2017, :); 

Summer2018 = find(data.TimePeriod == "Summer 2018");
Summer2018Data = data(Summer2018, :); 

Summer2019 = find(data.TimePeriod == "Summer 2019");
Summer2019Data = data(Summer2019, :); 

Summer2020 = find(data.TimePeriod == "Summer 2020");
Summer2020Data = data(Summer2020, :); 


AllIndices = find(data.TimePeriod == "Summer 2009" | ...
    data.TimePeriod == "Summer 2010" | ...
    data.TimePeriod == "Summer 2011" | ...
    data.TimePeriod == "Summer 2012"| ...
    data.TimePeriod == "Summer 2013"| ...
    data.TimePeriod == "Summer 2014"| ...
    data.TimePeriod == "Summer 2015"| ...
    data.TimePeriod == "Summer 2016" | ...
    data.TimePeriod == "Summer 2017" | ...
    data.TimePeriod == "Summer 2018" | ... 
    data.TimePeriod == "Summer 2019" | ...
    data.TimePeriod == "Summer 2020");


%% Ozone Analysis 
%%Comparing mean average of ozone pollution 
OzoneData = find(data.Name == "Ozone (O3)");
Ozone = data(OzoneData, :); 

%Summer 2009 Data
Summer2009OzoneIndices= find(Ozone.TimePeriod == "Summer 2009");
Summer2009Ozone= Ozone(Summer2009OzoneIndices, :); 

%Summer 2010 Data
Summer201OzoneIndices= find(Ozone.TimePeriod == "Summer 2010");
Summer2010Ozone= Ozone(Summer201OzoneIndices, :); 

%Summer 2011 Data
Summer2011OzoneIndices= find(Ozone.TimePeriod == "Summer 2011");
Summer2011Ozone= Ozone(Summer2011OzoneIndices, :); 

%Summer 2012 Data
Summer2012OzoneIndices= find(Ozone.TimePeriod == "Summer 2012");
Summer2012Ozone= Ozone(Summer2012OzoneIndices, :); 

%Summer 2013 Data
Summer2013OzoneIndices= find(Ozone.TimePeriod == "Summer 2013");
Summer2013Ozone= Ozone(Summer2013OzoneIndices, :); 

%Summer 2014 Data
Summer2014OzoneIndices= find(Ozone.TimePeriod == "Summer 2014");
Summer2014Ozone= Ozone(Summer2014OzoneIndices, :); 

%Summer 2015 Data
Summer2015OzoneIndices= find(Ozone.TimePeriod == "Summer 2015");
Summer2015Ozone= Ozone(Summer2015OzoneIndices, :); 

%Summer 2016 Data
Summer2016OzoneIndices= find(Ozone.TimePeriod == "Summer 2016");
Summer2016Ozone= Ozone(Summer2016OzoneIndices, :); 

%Summer 2017 Data
Summer2017OzoneIndices= find(Ozone.TimePeriod == "Summer 2017");
Summer2017Ozone= Ozone(Summer2017OzoneIndices, :); 

%Summer 2018 Data
Summer2018OzoneIndices= find(Ozone.TimePeriod == "Summer 2018");
Summer2018Ozone= Ozone(Summer2018OzoneIndices, :); 

%Summer 2019 Data
Summer2019OzoneIndices= find(Ozone.TimePeriod == "Summer 2019");
Summer2019Ozone= Ozone(Summer2019OzoneIndices, :); 

%Summer 2020 Data
Summer2020OzoneIndices= find(Ozone.TimePeriod == "Summer 2020");
Summer2020Ozone= Ozone(Summer2020OzoneIndices, :); 

%% 
% Plot the data on a map
figure
geoscatter(Summer2009Ozone.latitude, Summer2009Ozone.longitude, [], Summer2009Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2009')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2010Ozone.latitude, Summer2010Ozone.longitude, [], Summer2010Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2010')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2011Ozone.latitude, Summer2011Ozone.longitude, [], Summer2011Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2011')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2012Ozone.latitude, Summer2012Ozone.longitude, [], Summer2012Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2012')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2013Ozone.latitude, Summer2013Ozone.longitude, [], Summer2013Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2013')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2014Ozone.latitude, Summer2014Ozone.longitude, [], Summer2014Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2014')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2015Ozone.latitude, Summer2015Ozone.longitude, [], Summer2015Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2015')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2016Ozone.latitude, Summer2016Ozone.longitude, [], Summer2016Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2016')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2017Ozone.latitude, Summer2017Ozone.longitude, [], Summer2017Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2017')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2018Ozone.latitude, Summer2018Ozone.longitude, [], Summer2018Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2018')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2019Ozone.latitude, Summer2019Ozone.longitude, [], Summer2019Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2019')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

%% 
figure
geoscatter(Summer2020Ozone.latitude, Summer2020Ozone.longitude, [], Summer2020Ozone.DataValue, 'filled')

title('Average Ozone Concentrations Summer 2020')
s.ColorVariable = "OzoneSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


%% Summer 2020 Averages 
B_O_S2020 = BrooklynConcentration(Summer2020Ozone); 
Q_O_S2020= QueensConcentration(Summer2020Ozone);
M_O_S2020= ManhattanConcentration(Summer2020Ozone); 
Br_O_S2020 = BronxConcentration(Summer2020Ozone); 
S_O_S2020 = StatenIslandConcentration(Summer2020Ozone); 



%% 
% Summer 2019 Averages 
B_O_S2019 = BrooklynConcentration(Summer2019Ozone); 
Q_O_S2019= QueensConcentration(Summer2019Ozone);
M_O_S2019= ManhattanConcentration(Summer2019Ozone); 
Br_O_S2019 = BronxConcentration(Summer2019Ozone); 
S_O_S2019 = StatenIslandConcentration(Summer2019Ozone);

% Summer 2018 Averages 
B_O_S2018 = BrooklynConcentration(Summer2018Ozone); 
Q_O_S2018= QueensConcentration(Summer2018Ozone);
M_O_S2018= ManhattanConcentration(Summer2018Ozone); 
Br_O_S2018 = BronxConcentration(Summer2018Ozone); 
S_O_S2018 = StatenIslandConcentration(Summer2018Ozone);


% Summer 2017 Averages 
B_O_S2017 = BrooklynConcentration(Summer2017Ozone); 
Q_O_S2017= QueensConcentration(Summer2017Ozone);
M_O_S2017= ManhattanConcentration(Summer2017Ozone); 
Br_O_S2017 = BronxConcentration(Summer2017Ozone); 
S_O_S2017 = StatenIslandConcentration(Summer2017Ozone);


% Summer 2016 Averages 
B_O_S2016 = BrooklynConcentration(Summer2016Ozone); 
Q_O_S2016= QueensConcentration(Summer2016Ozone);
M_O_S2016= ManhattanConcentration(Summer2016Ozone); 
Br_O_S2016 = BronxConcentration(Summer2016Ozone); 
S_O_S2016 = StatenIslandConcentration(Summer2016Ozone);

% Summer 2015 Averages 
B_O_S2015 = BrooklynConcentration(Summer2015Ozone); 
Q_O_S2015= QueensConcentration(Summer2015Ozone);
M_O_S2015= ManhattanConcentration(Summer2015Ozone); 
Br_O_S2015 = BronxConcentration(Summer2015Ozone); 
S_O_S2015 = StatenIslandConcentration(Summer2015Ozone);

% Summer 2014 Averages 
B_O_S2014 = BrooklynConcentration(Summer2014Ozone); 
Q_O_S2014= QueensConcentration(Summer2014Ozone);
M_O_S2014= ManhattanConcentration(Summer2014Ozone); 
Br_O_S2014 = BronxConcentration(Summer2014Ozone); 
S_O_S2014 = StatenIslandConcentration(Summer2014Ozone);

NYC2014= [B_O_S2014, Q_O_S2014, M_O_S2014, Br_O_S2014, S_O_S2014];
aov2014 = anova(NYC2014);


% Summer 2013 Averages 
B_O_S2013 = BrooklynConcentration(Summer2013Ozone); 
Q_O_S2013= QueensConcentration(Summer2013Ozone);
M_O_S2013= ManhattanConcentration(Summer2013Ozone); 
Br_O_S2013 = BronxConcentration(Summer2013Ozone); 
S_O_S2013 = StatenIslandConcentration(Summer2013Ozone);

% Summer 2012 Averages 
B_O_S2012 = BrooklynConcentration(Summer2012Ozone); 
Q_O_S2012= QueensConcentration(Summer2012Ozone);
M_O_S2012= ManhattanConcentration(Summer2012Ozone); 
Br_O_S2012 = BronxConcentration(Summer2012Ozone); 
S_O_S2012 = StatenIslandConcentration(Summer2012Ozone);

% Summer 2011 Averages 
B_O_S2011 = BrooklynConcentration(Summer2011Ozone); 
Q_O_S2011= QueensConcentration(Summer2011Ozone);
M_O_S2011= ManhattanConcentration(Summer2011Ozone); 
Br_O_S2011 = BronxConcentration(Summer2011Ozone); 
S_O_S2011 = StatenIslandConcentration(Summer2011Ozone);


% Summer 2010 Averages 
B_O_S2010 = BrooklynConcentration(Summer2010Ozone); 
Q_O_S2010= QueensConcentration(Summer2010Ozone);
M_O_S2010= ManhattanConcentration(Summer2010Ozone); 
Br_O_S2010 = BronxConcentration(Summer2010Ozone); 
S_O_S2010 = StatenIslandConcentration(Summer2010Ozone);


% Summer 2009 Averages 
B_O_S2009 = BrooklynConcentration(Summer2009Ozone); 
Q_O_S2009= QueensConcentration(Summer2009Ozone);
M_O_S2009= ManhattanConcentration(Summer2009Ozone); 
Br_O_S2009 = BronxConcentration(Summer2009Ozone); 
S_O_S2009 = StatenIslandConcentration(Summer2009Ozone);


%% Ozone Statistical Tests
boroughs = {'Manhattan', 'Brooklyn', 'Queens', 'Bronx', 'Staten Island'};
years = [2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020];

NYCANOVA = [M_O_S2020, M_O_S2019, M_O_S2018, M_O_S2017, M_O_S2016, M_O_S2015, M_O_S2014, M_O_S2013, M_O_S2012, M_O_S2011, M_O_S2010, M_O_S2009;
            B_O_S2020, B_O_S2019, B_O_S2018, B_O_S2017, B_O_S2016, B_O_S2015, B_O_S2014, B_O_S2013, B_O_S2012, B_O_S2011, B_O_S2010, B_O_S2009;
            Q_O_S2020, Q_O_S2019, Q_O_S2018, Q_O_S2017, Q_O_S2016, Q_O_S2015, Q_O_S2014, Q_O_S2013, Q_O_S2012, Q_O_S2011, Q_O_S2010, Q_O_S2009;
            Br_O_S2020, Br_O_S2019, Br_O_S2018, Br_O_S2017, Br_O_S2016, Br_O_S2015, Br_O_S2014, Br_O_S2013, Br_O_S2012, Br_O_S2011, Br_O_S2010, Br_O_S2009;
            S_O_S2020, S_O_S2019, S_O_S2018, S_O_S2017, S_O_S2016, S_O_S2015, S_O_S2014, S_O_S2013, S_O_S2012, S_O_S2011, S_O_S2010, S_O_S2009];

% Perform two-way ANOVA
[p, tbl, stats] = anova2(NYCANOVA, 1);

% Display the ANOVA table
disp(tbl);

%% Sulfur Dioxide Analysis 

%%Comparing mean average of ozone pollution 
SulfurData = find(data.Name == "Sulfur Dioxide (SO2)");
Sulfur = data(SulfurData, :); 

%Winter 2008-09 Data
Winter2009SulfurIndices= find(Sulfur.TimePeriod == "Winter 2008-09");
Winter2009Sulfur= Sulfur(Winter2009SulfurIndices, :); 

%Winter 2010 Data
Winter201SulfurIndices= find(Sulfur.TimePeriod == "Winter 2009-10");
Winter2010Sulfur= Sulfur(Winter201SulfurIndices, :); 

%Winter 2011 Data
Winter2011SulfurIndices= find(Sulfur.TimePeriod == "Winter 2010-11");
Winter2011Sulfur= Sulfur(Winter2011SulfurIndices, :); 

%Winter 2012 Data
Winter2012SulfurIndices= find(Sulfur.TimePeriod == "Winter 2011-12");
Winter2012Sulfur= Sulfur(Winter2012SulfurIndices, :); 

%Winter 2013 Data
Winter2013SulfurIndices= find(Sulfur.TimePeriod == "Winter 2012-13");
Winter2013Sulfur= Sulfur(Winter2013SulfurIndices, :); 

%Winter 2014 Data
Winter2014SulfurIndices= find(Sulfur.TimePeriod == "Winter 2013-14");
Winter2014Sulfur= Sulfur(Winter2014SulfurIndices, :); 

Winter2015SulfurIndices= find(Sulfur.TimePeriod == "Winter 2014-15");
Winter2015Sulfur= Sulfur(Winter2015SulfurIndices, :); 

Winter2016SulfurIndices= find(Sulfur.TimePeriod == "Winter 2015-16");
Winter2016Sulfur= Sulfur(Winter2016SulfurIndices, :); 


% Plot the Sulfur on a map
figure
geoscatter(Winter2009Sulfur.latitude, Winter2009Sulfur.longitude, [], Winter2009Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2008-2009')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Winter2010Sulfur.latitude, Winter2010Sulfur.longitude, [], Winter2010Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2009-2010')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Winter2011Sulfur.latitude, Winter2011Sulfur.longitude, [], Winter2011Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2010-2011')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Winter2012Sulfur.latitude, Winter2012Sulfur.longitude, [], Winter2012Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2011-2012')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Winter2013Sulfur.latitude, Winter2013Sulfur.longitude, [], Winter2013Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2012-2013')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Winter2014Sulfur.latitude, Winter2014Sulfur.longitude, [], Winter2014Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2013-2014')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Winter2015Sulfur.latitude, Winter2015Sulfur.longitude, [], Winter2015Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2014-2015')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Winter2016Sulfur.latitude, Winter2016Sulfur.longitude, [], Winter2016Sulfur.DataValue, 'filled')

title('Average Sulfur Concentrations Winter 2015-2016')
s.ColorVariable = "SulfurWinterData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

%% Sulfur Dioxide Averages 

% Winter 2016 Averages 
B_S_W2016 = BrooklynConcentration(Winter2016Sulfur); 
Q_S_W2016= QueensConcentration(Winter2016Sulfur);
M_S_W2016= ManhattanConcentration(Winter2016Sulfur); 
Br_S_W2016 = BronxConcentration(Winter2016Sulfur); 
S_S_W2016 = StatenIslandConcentration(Winter2016Sulfur); 

% Winter 2015 Averages 
B_S_W2015 = BrooklynConcentration(Winter2015Sulfur); 
Q_S_W2015= QueensConcentration(Winter2015Sulfur);
M_S_W2015= ManhattanConcentration(Winter2015Sulfur); 
Br_S_W2015 = BronxConcentration(Winter2015Sulfur); 
S_S_W2015 = StatenIslandConcentration(Winter2015Sulfur); 

% Winter 2014 Averages 
B_S_W2014 = BrooklynConcentration(Winter2014Sulfur); 
Q_S_W2014= QueensConcentration(Winter2014Sulfur);
M_S_W2014= ManhattanConcentration(Winter2014Sulfur); 
Br_S_W2014 = BronxConcentration(Winter2014Sulfur); 
S_S_W2014 = StatenIslandConcentration(Winter2014Sulfur); 


% Winter 2013 Averages 
B_S_W2013 = BrooklynConcentration(Winter2013Sulfur); 
Q_S_W2013= QueensConcentration(Winter2013Sulfur);
M_S_W2013= ManhattanConcentration(Winter2013Sulfur); 
Br_S_W2013 = BronxConcentration(Winter2013Sulfur); 
S_S_W2013 = StatenIslandConcentration(Winter2013Sulfur); 


% Winter 2012 Averages 
B_S_W2012 = BrooklynConcentration(Winter2012Sulfur); 
Q_S_W2012= QueensConcentration(Winter2012Sulfur);
M_S_W2012= ManhattanConcentration(Winter2012Sulfur); 
Br_S_W2012 = BronxConcentration(Winter2012Sulfur); 
S_S_W2012 = StatenIslandConcentration(Winter2012Sulfur); 



% Winter 2011 Averages 
B_S_W2011 = BrooklynConcentration(Winter2011Sulfur); 
Q_S_W2011= QueensConcentration(Winter2011Sulfur);
M_S_W2011= ManhattanConcentration(Winter2011Sulfur); 
Br_S_W2011 = BronxConcentration(Winter2011Sulfur); 
S_S_W2011 = StatenIslandConcentration(Winter2011Sulfur); 


% Winter 2010 Averages 
B_S_W2010 = BrooklynConcentration(Winter2010Sulfur); 
Q_S_W2010= QueensConcentration(Winter2010Sulfur);
M_S_W2010= ManhattanConcentration(Winter2010Sulfur); 
Br_S_W2010 = BronxConcentration(Winter2010Sulfur); 
S_S_W2010 = StatenIslandConcentration(Winter2010Sulfur); 



% Winter 2009 Averages 
B_S_W2009 = BrooklynConcentration(Winter2009Sulfur); 
Q_S_W2009= QueensConcentration(Winter2009Sulfur);
M_S_W2009= ManhattanConcentration(Winter2009Sulfur); 
Br_S_W2009 = BronxConcentration(Winter2009Sulfur); 
S_S_W2009 = StatenIslandConcentration(Winter2009Sulfur); 


%% Sulfur Dioxide Statistical Tests
boroughs = {'Manhattan', 'Brooklyn', 'Queens', 'Bronx', 'Staten Island'};
years = [2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016];

SulfurNYCANOVA = [M_S_W2009, M_S_W2010, M_S_W2011, M_S_W2012, M_S_W2013, M_S_W2014, M_S_W2015, M_S_W2016; 
            B_S_W2009, B_S_W2010, B_S_W2011, B_S_W2012, B_S_W2013, B_S_W2014, B_S_W2015, B_S_W2016;
            Q_S_W2009, Q_S_W2010, Q_S_W2011, Q_S_W2012, Q_S_W2013, Q_S_W2014, Q_S_W2015, Q_S_W2016;
            Br_S_W2009, Br_S_W2010, Br_S_W2011, Br_S_W2012, Br_S_W2013, Br_S_W2014, Br_S_W2015, Br_S_W2016;
            S_S_W2009, S_S_W2010, S_S_W2011, S_S_W2012, S_S_W2013, S_S_W2014, S_S_W2015, S_S_W2016]; 

% Perform two-way ANOVA
[p, tbl, stats] = anova2(SulfurNYCANOVA, 1);

% Display the ANOVA table
disp(tbl);

%% Nitrogen Dioxide Analysis

%%Comparing mean average of ozone pollution 
NitrogenData = find(data.Name == "Nitrogen Dioxide (NO2)");
Nitrogen = data(NitrogenData, :); 


%Summer 2009 Data
Summer2009NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2009");
Summer2009Nitrogen= Nitrogen(Summer2009NitrogenIndices, :); 

%Summer 2010 Data
Summer201NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2010");
Summer2010Nitrogen= Nitrogen(Summer201NitrogenIndices, :); 

%Summer 2011 Data
Summer2011NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2011");
Summer2011Nitrogen= Nitrogen(Summer2011NitrogenIndices, :); 

%Summer 2012 Data
Summer2012NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2012");
Summer2012Nitrogen= Nitrogen(Summer2012NitrogenIndices, :); 

%Summer 2013 Data
Summer2013NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2013");
Summer2013Nitrogen= Nitrogen(Summer2013NitrogenIndices, :); 

%Summer 2014 Data
Summer2014NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2014");
Summer2014Nitrogen= Nitrogen(Summer2014NitrogenIndices, :); 

%Summer 2015 Data
Summer2015NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2015");
Summer2015Nitrogen= Nitrogen(Summer2015NitrogenIndices, :); 

%Summer 2016 Data
Summer2016NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2016");
Summer2016Nitrogen= Nitrogen(Summer2016NitrogenIndices, :); 

%Summer 2017 Data
Summer2017NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2017");
Summer2017Nitrogen= Nitrogen(Summer2017NitrogenIndices, :); 

%Summer 2018 Data
Summer2018NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2018");
Summer2018Nitrogen= Nitrogen(Summer2018NitrogenIndices, :); 

%Summer 2019 Data
Summer2019NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2019");
Summer2019Nitrogen= Nitrogen(Summer2019NitrogenIndices, :); 

%Summer 2020 Data
Summer2020NitrogenIndices= find(Nitrogen.TimePeriod == "Summer 2020");
Summer2020Nitrogen= Nitrogen(Summer2020NitrogenIndices, :); 


figure
geoscatter(Summer2009Nitrogen.latitude, Summer2009Nitrogen.longitude, [], Summer2009Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2009')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2010Nitrogen.latitude, Summer2010Nitrogen.longitude, [], Summer2010Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2010')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2011Nitrogen.latitude, Summer2011Nitrogen.longitude, [], Summer2011Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2011')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2012Nitrogen.latitude, Summer2012Nitrogen.longitude, [], Summer2012Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2012')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2013Nitrogen.latitude, Summer2013Nitrogen.longitude, [], Summer2013Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2013')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";
%% 
figure
geoscatter(Summer2014Nitrogen.latitude, Summer2014Nitrogen.longitude, [], Summer2014Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2014')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";
%% 

figure
geoscatter(Summer2015Nitrogen.latitude, Summer2015Nitrogen.longitude, [], Summer2015Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2015')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2016Nitrogen.latitude, Summer2016Nitrogen.longitude, [], Summer2016Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2016')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2017Nitrogen.latitude, Summer2017Nitrogen.longitude, [], Summer2017Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2017')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2018Nitrogen.latitude, Summer2018Nitrogen.longitude, [], Summer2018Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2018')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";


figure
geoscatter(Summer2019Nitrogen.latitude, Summer2019Nitrogen.longitude, [], Summer2019Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2019')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

figure
geoscatter(Summer2020Nitrogen.latitude, Summer2020Nitrogen.longitude, [], Summer2020Nitrogen.DataValue, 'filled')

title('Average Nitrogen Dioxide Concentrations Summer 2020')
s.ColorVariable = "NitrogenSummerData.DataValue";
c = colorbar;
c.Label.String = "Pollutant Concentrations (ppb)";

%% Summer 2020 Averages 
B_N_S2020 = BrooklynConcentration(Summer2020Nitrogen); 
Q_N_S2020= QueensConcentration(Summer2020Nitrogen);
M_N_S2020= ManhattanConcentration(Summer2020Nitrogen); 
Br_N_S2020 = BronxConcentration(Summer2020Nitrogen); 
S_N_S2020 = StatenIslandConcentration(Summer2020Nitrogen); 

% Summer 2019 Averages 
B_N_S2019 = BrooklynConcentration(Summer2019Nitrogen); 
Q_N_S2019= QueensConcentration(Summer2019Nitrogen);
M_N_S2019= ManhattanConcentration(Summer2019Nitrogen); 
Br_N_S2019 = BronxConcentration(Summer2019Nitrogen); 
S_N_S2019 = StatenIslandConcentration(Summer2019Nitrogen);

% Summer 2018 Averages 
B_N_S2018 = BrooklynConcentration(Summer2018Nitrogen); 
Q_N_S2018= QueensConcentration(Summer2018Nitrogen);
M_N_S2018= ManhattanConcentration(Summer2018Nitrogen); 
Br_N_S2018 = BronxConcentration(Summer2018Nitrogen); 
S_N_S2018 = StatenIslandConcentration(Summer2018Nitrogen);


% Summer 2017 Averages 
B_N_S2017 = BrooklynConcentration(Summer2017Nitrogen); 
Q_N_S2017= QueensConcentration(Summer2017Nitrogen);
M_N_S2017= ManhattanConcentration(Summer2017Nitrogen); 
Br_N_S2017 = BronxConcentration(Summer2017Nitrogen); 
S_N_S2017 = StatenIslandConcentration(Summer2017Nitrogen);


% Summer 2016 Averages 
B_N_S2016 = BrooklynConcentration(Summer2016Nitrogen); 
Q_N_S2016= QueensConcentration(Summer2016Nitrogen);
M_N_S2016= ManhattanConcentration(Summer2016Nitrogen); 
Br_N_S2016 = BronxConcentration(Summer2016Nitrogen); 
S_N_S2016 = StatenIslandConcentration(Summer2016Nitrogen);

% Summer 2015 Averages 
B_N_S2015 = BrooklynConcentration(Summer2015Nitrogen); 
Q_N_S2015= QueensConcentration(Summer2015Nitrogen);
M_N_S2015= ManhattanConcentration(Summer2015Nitrogen); 
Br_N_S2015 = BronxConcentration(Summer2015Nitrogen); 
S_N_S2015 = StatenIslandConcentration(Summer2015Nitrogen);

% Summer 2014 Averages 
B_N_S2014 = BrooklynConcentration(Summer2014Nitrogen); 
Q_N_S2014= QueensConcentration(Summer2014Nitrogen);
M_N_S2014= ManhattanConcentration(Summer2014Nitrogen); 
Br_N_S2014 = BronxConcentration(Summer2014Nitrogen); 
S_N_S2014 = StatenIslandConcentration(Summer2014Nitrogen);

% Summer 2013 Averages 
B_N_S2013 = BrooklynConcentration(Summer2013Nitrogen); 
Q_N_S2013= QueensConcentration(Summer2013Nitrogen);
M_N_S2013= ManhattanConcentration(Summer2013Nitrogen); 
Br_N_S2013 = BronxConcentration(Summer2013Nitrogen); 
S_N_S2013 = StatenIslandConcentration(Summer2013Nitrogen);

% Summer 2012 Averages 
B_N_S2012 = BrooklynConcentration(Summer2012Nitrogen); 
Q_N_S2012= QueensConcentration(Summer2012Nitrogen);
M_N_S2012= ManhattanConcentration(Summer2012Nitrogen); 
Br_N_S2012 = BronxConcentration(Summer2012Nitrogen); 
S_N_S2012 = StatenIslandConcentration(Summer2012Nitrogen);

% Summer 2011 Averages 
B_N_S2011 = BrooklynConcentration(Summer2011Nitrogen); 
Q_N_S2011= QueensConcentration(Summer2011Nitrogen);
M_N_S2011= ManhattanConcentration(Summer2011Nitrogen); 
Br_N_S2011 = BronxConcentration(Summer2011Nitrogen); 
S_N_S2011 = StatenIslandConcentration(Summer2011Nitrogen);

% Summer 2010 Averages 
B_N_S2010 = BrooklynConcentration(Summer2010Nitrogen); 
Q_N_S2010= QueensConcentration(Summer2010Nitrogen);
M_N_S2010= ManhattanConcentration(Summer2010Nitrogen); 
Br_N_S2010 = BronxConcentration(Summer2010Nitrogen); 
S_N_S2010 = StatenIslandConcentration(Summer2010Nitrogen);

% Summer 2009 Averages 
B_N_S2009 = BrooklynConcentration(Summer2009Nitrogen); 
Q_N_S2009= QueensConcentration(Summer2009Nitrogen);
M_N_S2009= ManhattanConcentration(Summer2009Nitrogen); 
Br_N_S2009 = BronxConcentration(Summer2009Nitrogen); 
S_N_S2009 = StatenIslandConcentration(Summer2009Nitrogen);

%% Nitrogen Statistical Tests
boroughs = {'Manhattan', 'Brooklyn', 'Queens', 'Bronx', 'Staten Island'};
years = [2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020];

NYCANOVA = [M_N_S2009, M_N_S2010, M_N_S2011, M_N_S2012, M_N_S2013, M_N_S2014, M_N_S2015, M_N_S2016, M_N_S2017, M_N_S2018, M_N_S2019, M_N_S2020;
            B_N_S2009, B_N_S2010, B_N_S2011, B_N_S2012, B_N_S2013, B_N_S2014, B_N_S2015, B_N_S2016, B_N_S2017, B_N_S2018, B_N_S2019, B_N_S2020;
            Q_N_S2009, Q_N_S2010, Q_N_S2011, Q_N_S2012, Q_N_S2013, Q_N_S2014, Q_N_S2015, Q_N_S2016, Q_N_S2017, Q_N_S2018, Q_N_S2019, Q_N_S2020;
            Br_N_S2009, Br_N_S2010, Br_N_S2011, Br_N_S2012, Br_N_S2013, Br_N_S2014, Br_N_S2015, Br_N_S2016, Br_N_S2017, Br_N_S2018, Br_N_S2019, Br_N_S2020;
            S_N_S2009, S_N_S2010, S_N_S2011, S_N_S2012, S_N_S2013, S_N_S2014, S_N_S2015, S_N_S2016, S_N_S2017, S_N_S2018, S_N_S2019, S_N_S2020];

% Perform two-way ANOVA
[p, tbl2, stats] = anova2(NYCANOVA, 1);

% Display the ANOVA table
disp(tbl2);


%% Correlations


%% OzoneSulfurCorrelations

%Manhattan
M_OzoneYearlyAverages = [M_O_S2009, M_O_S2010, M_O_S2011, M_O_S2012, M_O_S2013, M_O_S2014, M_O_S2015]; 
M_SulfurYearlyAverages = [M_S_W2009, M_S_W2010, M_S_W2011, M_S_W2012, M_S_W2013, M_S_W2014, M_S_W2015];

%Queens
Q_OzoneYearlyAverages = [Q_O_S2009, Q_O_S2010, Q_O_S2011, Q_O_S2012, Q_O_S2013, Q_O_S2014, Q_O_S2015]; 
Q_SulfurYearlyAverages = [Q_S_W2009, Q_S_W2010, Q_S_W2011, Q_S_W2012, Q_S_W2013, Q_S_W2014, Q_S_W2015];

%Staten Island 
S_OzoneYearlyAverages = [S_O_S2009, S_O_S2010, S_O_S2011, S_O_S2012, S_O_S2013, S_O_S2014, S_O_S2015]; 
S_SulfurYearlyAverages = [S_S_W2009, S_S_W2010, S_S_W2011, S_S_W2012, S_S_W2013, S_S_W2014, S_S_W2015];

%Bronx 
Br_OzoneYearlyAverages = [Br_O_S2009, Br_O_S2010, Br_O_S2011, Br_O_S2012, Br_O_S2013, Br_O_S2014, Br_O_S2015]; 
Br_SulfurYearlyAverages = [Br_S_W2009, Br_S_W2010, Br_S_W2011, Br_S_W2012, Br_S_W2013, Br_S_W2014, Br_S_W2015];

%Brooklyn 
B_OzoneYearlyAverages = [B_O_S2009, B_O_S2010, B_O_S2011, B_O_S2012, B_O_S2013, B_O_S2014, B_O_S2015]; 
B_SulfurYearlyAverages = [B_S_W2009, B_S_W2010, B_S_W2011, B_S_W2012, B_S_W2013, B_S_W2014, B_S_W2015];

% Compute correlation coefficient
correlation1 = corrcoef(M_OzoneYearlyAverages, M_SulfurYearlyAverages);
correlation2 = corrcoef(Q_OzoneYearlyAverages, Q_SulfurYearlyAverages);
correlation3 = corrcoef(S_OzoneYearlyAverages, S_SulfurYearlyAverages);
correlation4 = corrcoef(Br_OzoneYearlyAverages, Br_SulfurYearlyAverages);
correlation5 = corrcoef(B_OzoneYearlyAverages, B_SulfurYearlyAverages);

% Extract the correlation value
correlation_value1 = correlation1(1, 2);
correlation_value2 = correlation2(1, 2);
correlation_value3 = correlation3(1, 2);
correlation_value4 = correlation4(1, 2);
correlation_value5 = correlation5(1, 2);

% Display the correlation value
disp(correlation_value1);
disp(correlation_value2);
disp(correlation_value3);
disp(correlation_value4);
disp(correlation_value5);



%% Ozone Nitrogen Correlations
%Manhattan
M_OzoneYearlyAverages = [M_O_S2009, M_O_S2010, M_O_S2011, M_O_S2012, M_O_S2013, M_O_S2014, M_O_S2015, M_O_S2016, M_O_S2017, M_O_S2018, M_O_S2019, M_O_S2020]; 
M_NitrogenYearlyAverages = [M_N_S2009, M_N_S2010, M_N_S2011, M_N_S2012, M_N_S2013, M_N_S2014, M_N_S2015, M_N_S2016, M_N_S2017, M_N_S2018, M_N_S2019, M_N_S2020];

%Queens
Q_OzoneYearlyAverages = [Q_O_S2009, Q_O_S2010, Q_O_S2011, Q_O_S2012, Q_O_S2013, Q_O_S2014, Q_O_S2015, Q_O_S2016, Q_O_S2017, Q_O_S2018, Q_O_S2019, Q_O_S2020]; 
Q_NitrogenYearlyAverages = [Q_N_S2009, Q_N_S2010, Q_N_S2011, Q_N_S2012, Q_N_S2013, Q_N_S2014, Q_N_S2015, Q_N_S2016, Q_N_S2017, Q_N_S2018, Q_N_S2019, Q_N_S2020];


%Staten Island 
S_OzoneYearlyAverages = [S_O_S2009, S_O_S2010, S_O_S2011, S_O_S2012, S_O_S2013, S_O_S2014, S_O_S2015, S_O_S2016, S_O_S2017, S_O_S2018, S_O_S2019, S_O_S2020]; 
S_NitrogenYearlyAverages = [S_N_S2009, S_N_S2010, S_N_S2011, S_N_S2012, S_N_S2013, S_N_S2014, S_N_S2015, S_N_S2016, S_N_S2017, S_N_S2018, S_N_S2019, S_N_S2020];

%Bronx 
Br_OzoneYearlyAverages = [Br_O_S2009, Br_O_S2010, Br_O_S2011, Br_O_S2012, Br_O_S2013, Br_O_S2014, Br_O_S2015, Br_O_S2016, Br_O_S2017, Br_O_S2018, Br_O_S2019, Br_O_S2020]; 
Br_NitrogenYearlyAverages = [Br_N_S2009, Br_N_S2010, Br_N_S2011, Br_N_S2012, Br_N_S2013, Br_N_S2014, Br_N_S2015, Br_N_S2016, Br_N_S2017, Br_N_S2018, Br_N_S2019, Br_N_S2020]; 

%Brooklyn 
B_OzoneYearlyAverages = [B_O_S2009, B_O_S2010, B_O_S2011, B_O_S2012, B_O_S2013, B_O_S2014, B_O_S2015, B_O_S2016, B_O_S2017, B_O_S2018, B_O_S2019, B_O_S2020]; 
B_NitrogenYearlyAverages = [B_N_S2009, B_N_S2010, B_N_S2011, B_N_S2012, B_N_S2013, B_N_S2014, B_N_S2015, B_N_S2016, B_N_S2017, B_N_S2018, B_N_S2019, B_N_S2020]; 


% Compute correlation coefficient
correlation6 = corrcoef(M_OzoneYearlyAverages, M_NitrogenYearlyAverages);
correlation7 = corrcoef(Q_OzoneYearlyAverages, Q_NitrogenYearlyAverages);
correlation8 = corrcoef(S_OzoneYearlyAverages, S_NitrogenYearlyAverages);
correlation9 = corrcoef(Br_OzoneYearlyAverages, Br_NitrogenYearlyAverages);
correlation10 = corrcoef(B_OzoneYearlyAverages, B_NitrogenYearlyAverages);

% Extract the correlation value
correlation_value6 = correlation6(1, 2);
correlation_value7 = correlation7(1, 2);
correlation_value8 = correlation8(1, 2);
correlation_value9 = correlation9(1, 2);
correlation_value10 = correlation10(1, 2);

% Display the correlation value
disp(correlation_value6);
disp(correlation_value7);
disp(correlation_value8);
disp(correlation_value9);
disp(correlation_value10);
