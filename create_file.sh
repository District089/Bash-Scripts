#!/bin/bash
dir=/root/shell_scripts
echo -e "Please provice file name you want create: \c"
read -r file
touch "$dir"/"$file"
echo '#!/bin/bash' > $dir/$file
echo '#Purpose:' >> $dir/$file
echo '#Created Date:' `date` >> $dir/$file
echo '#Author: Dennis Uhlemann' >> $dir/$file
echo '# START #' >> $dir/$file
echo '# END #' >> $dir/$file

# move this script named "template" to /bin/ and write in the bash "template", now you can use the script as a template

