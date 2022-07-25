#!/bin/bash


#dir=/root/shell_scripting_tutorial_for_beginners
#echo -e "Please provide filename you want to create: \c"
#read -r file
#touch $dir/$file.sh | xargs chmod +x $dir/$file.sh
#echo '#!/bin/bash' > $dir/$file.sh
#echo '#Created Date:' `date` >> $dir/$file.sh
#echo '#Author: Dennis Uhlemann' >> $dir/$file.sh
#nano $dir/$file.sh

dir=/root/shell_scripting_tutorial_for_beginners
touch $dir/$1.sh | xargs chmod +x $dir/$1.sh
echo '#!/bin/bash' > $dir/$1.sh
echo '#Created Date:' `date` >> $dir/$1.sh
echo '#Author: Dennis Uhlemann' >> $dir/$1.sh
nano $dir/$1.sh


