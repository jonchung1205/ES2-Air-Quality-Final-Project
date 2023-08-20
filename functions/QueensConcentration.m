function [avgConc] = QueensConcentration (dataTable)

QnsTotalPollutant= 0;
datapoints = 0;
for i = 1: length(dataTable.latitude)
    if (dataTable.latitude(i) <= 40.7779)
        if (dataTable.latitude(i)>= 40.6664 )
            if (dataTable.longitude(i) >= -73.952 )
                if (dataTable.longitude(i) <= -73.747 )
                    QnsTotalPollutant= QnsTotalPollutant+ dataTable.DataValue(i); 
                    datapoints = datapoints + 1;
                end 
            end 
        end
    end 
end

avgConc = (QnsTotalPollutant / datapoints);
disp(['Queens Average Pollutant: ' num2str(avgConc)]);
disp(dataTable.TimePeriod(1));


end