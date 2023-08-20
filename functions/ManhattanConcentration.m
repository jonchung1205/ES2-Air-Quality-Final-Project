function [avgConc] = ManhattanConcentration(dataTable)


ManTotalPollutant= 0;
datapoints = 0;
for i = 1: length(dataTable.latitude)
    if (dataTable.latitude(i) <= 40.8066)
        if (dataTable.latitude(i)>= 40.6977 )
            if (dataTable.longitude(i) >= -74.0106 )
                if (dataTable.longitude(i) <= -73.9408 )
                    ManTotalPollutant= ManTotalPollutant+ dataTable.DataValue(i); 
                    datapoints = datapoints + 1;
                end 
            end 
        end
    end 
end

avgConc = (ManTotalPollutant / datapoints);
disp(['Manhattan Average Pollutant: ' num2str(avgConc)]);
disp(dataTable.TimePeriod(1));

end