# IONEX Utilities
Here are some MATLAB utilities for working with IONEX files. These functions do
not have any dependencies on third-party scripts.  You can find a link to the
IONEX 1.1 standard [here](http://ftp.aiub.unibe.ch/ionex/draft/ionex11.pdf).

Manifest of functions:
* **load_ionex** - loads the contents of IONEX data file (only IONEX version 1.1 is
    supported) into a MATLAB table with the columns: 'Latitude', 'Longitude',
    'Height', and 'TEC' (Total Electron Content).  Currently no error checking
    or validation is performed and the function will error out if the data file
    at 'file_path' does not adhere strictly to the IONEX 1.1 standard.
