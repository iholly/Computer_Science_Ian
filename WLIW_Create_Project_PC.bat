@ECHO OFF
::Prevents "UNC path not supported" error
cls
@pushd %~dp0
ECHO ---------------------------

::ACTION-Set the variable for the production unit- THIS MUST BE EXACTLY AS THE PRODUCTION UNIT NAME APPEARS IN THE FILE PATH ON POST-STORAGE-EDIT
Set produnit=WLIW

::ACTION-Double-check this is the right path
Set projpath="\\post-storage-edit\post_edit_WLIW\Projects\%projid%"

::Requests the user enter a new Project ID which becomes the value of the "projID" variable
ECHO Please enter the new project ID
Set /p projid=projectID:

::Creates new Project folder and child folders
::ACTION- Please customize the folders structure for each production unit
md "%projpath%\%projid%\%projid%_Documents"
md "%projpath%\%projid%\%projid%_Graphics"
md "%projpath%\%projid%\%projid%_Music"
md "%projpath%\%projid%\%projid%_OldProjects"
md "%projpath%\%projid%\%projid%_OtherVersions"
md "%projpath%\%projid%\%projid%_OtherVideo"
md "%projpath%\%projid%\%projid%_VO"

::Opens new Project Folder in Explorer
explorer \\post-storage-edit\post_edit_WLIW\Projects\%projid%

ECHO ---------------------------
