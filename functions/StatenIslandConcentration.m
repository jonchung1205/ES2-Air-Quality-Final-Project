function [avgConc] = StatenIslandConcentration(dataTable)

StnTotalPollutant= 0;
datapoints = 0;

for i = 1: length(dataTable.latitude)
    if (dataTable.latitude(i) <= 40.6424)
        if (dataTable.latitude(i)>= 40.5113 )
            if (dataTable.longitude(i) >= -74.2506 )
                if (dataTable.longitude(i) <= -74.0753 )
                    StnTotalPollutant= StnTotalPollutant + dataTable.DataValue(i); 
                    datapoints = datapoints + 1;
                end 
            end 
        end
    end 
end

avgConc = (StnTotalPollutant / datapoints);
disp(['Staten Island Average Pollutant: ' num2str(avgConc)]);
disp(dataTable.TimePeriod(1));

end