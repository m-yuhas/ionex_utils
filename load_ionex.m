function data = load_ionex(file_path)
% load_ionx  Load the contents of an IONEX data file into a MATLAB table.
%
%     data = load_ionex(file_path) loads the contents of IONEX data file (only
%         IONEX version 1.1 is supported) into a MATLAB table with the columns:
%         'Latitude', 'Longitude', 'Height', and 'TEC' (Total Electron
%         Content).  Currently no error checking or validation is performed and
%         the function will error out if the data file at 'file_path' does not
%         adhere strictly to the IONEX 1.1 standard.
fid = fopen(file_path);
line_txt = fgetl(fid);
data_mat = [];
state = 0;
while ischar(line_txt)
    line_txt = strtrim(strrep(line_txt, '-', ' -'));
    line_data = strsplit(line_txt);
    if state == 0
        if strcmp(line_data{end}, 'LAT/LON1/LON2/DLON/H')
            lat = str2double(line_data{1});
	    lon1 = str2double(line_data{2});
	    lon2 = str2double(line_data{3});
	    dlon = str2double(line_data{4});
	    h = str2double(line_data{5});
	    tec = [];
	    frame_size = size(lon1:dlon:lon2, 2);
	    state = 1;
        end
    elseif state == 1
	tec = [tec, str2double(line_data)]
	if size(tec, 2) == frame_size
            frame = [lat * ones(1, frame_size); ...
	             h * ones(1, frame_size); ...
		     lon1:dlon:lon2; ...
		     tec];
	    data_mat = [data_mat, frame];
            state = 0;
	end
    end
    line_txt = fgetl(fid);
end
fclose(fid);
data = array2table(data_mat', 'VariableNames', ...
    {'Latitude', 'Height', 'Longitude', 'TEC'});
end
