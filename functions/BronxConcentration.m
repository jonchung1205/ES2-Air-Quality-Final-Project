function [avgConc] = BronxConcentration(dataTable)


BrxTotalPollutant= 0;
datapoints = 0;

for i = 1: length(dataTable.latitude)
    if (dataTable.latitude(i) <= 40.8902)
        if (dataTable.latitude(i)>= 40.8124 )
            if (dataTable.longitude(i) >= -73.936 )
                if (dataTable.longitude(i) <= -73.8205 )
                    BrxTotalPollutant= BrxTotalPollutant+ dataTable.DataValue(i); 
                    datapoints = datapoints + 1;
                end 
            end 
        end
    end 
end

avgConc = (BrxTotalPollutant / datapoints);
disp(['Bronx Average Pollutant: ' num2str(avgConc)]);
disp(dataTable.TimePeriod(1));

end