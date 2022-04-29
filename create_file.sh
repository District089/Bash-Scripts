#!/bin/bash
dir=/root/shell_scripts
echo -e "Please provice file name you want create: \c"
read -r file
touch "$dir"/"$file"
echo '#!/bin/bash' > $dir/$file
echo '#Purpose:' >> $dir/$file
echo '#Created Date:' `date` >> $dir/$file
