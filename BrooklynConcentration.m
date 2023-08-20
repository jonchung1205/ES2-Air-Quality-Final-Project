function [avgConc] = BrooklynConcentration (dataTable)

BknTotalPollutant= 0;
datapoints = 0;
for i = 1: length(dataTable.latitude)
    if (dataTable.latitude(i) <= 40.6925)
        if (dataTable.longitude(i)>= -74.0098 )
            if (dataTable.longitude(i) <= -73.8827 )
                BknTotalPollutant= BknTotalPollutant+ dataTable.DataValue(i); 
                datapoints = datapoints + 1; 
            end 
        end
    end 
end

avgConc = (BknTotalPollutant / datapoints);
disp(['Brooklyn Average Pollutant: ' num2str(avgConc)]);
disp(dataTable.TimePeriod(1));

end