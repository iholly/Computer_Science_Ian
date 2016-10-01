@ECHO OFF
::Prevents "UNC path not supported" error
cls
@pushd %~dp0
ECHO ---------------------------

::ACTION-Set the variable for the production unit- THIS MUST BE EXACTLY AS THE PRODUCTION UNIT NAME APPEARS IN THE FILE PATH ON POST-STORAGE-EDIT
Set produnit=IEG

::ACTION-Double-check this is the right path
Set projpath="\\post-storage-edit\post_edit_%produnit%\Projects"

::Requests the user enter a new Project ID which becomes the value of the "projID" variable
ECHO Please enter the new project ID
Set /p projid=projectID:

::Creates new Project folder and child folders
::ACTION- Please customize the folders structure for each production unit
md "%projpath%\%projid%\Audio"
md "%projpath%\%projid%\Documents"
md "%projpath%\%projid%\Exports"
md "%projpath%\%projid%\Graphics"
md "%projpath%\%projid%\Music"
md "%projpath%\%projid%\OldProjects"
md "%projpath%\%projid%\OtherVersions"
md "%projpath%\%projid%\OtherVideo"
md "%projpath%\%projid%\Stills"
md "%projpath%\%projid%\VO"

::Opens new Project Folder in Explorer
explorer "%projpath%\%projid%"

ECHO ---------------------------
