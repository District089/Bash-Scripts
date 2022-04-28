# echo comments #

# echo -e = enable escapes from \ # 

# In this line will be \n and \t  not executed, because the "-e" parameter is not there #
echo "Hello World Dennis Uhlemann"
echo "Hello World \n Dennis Uhlemann"
echo "Hello World \t Dennis Uhlemann"

# In this line will be executed the right syntax from -e #

echo -e "Hello World Dennis Uhlemann"
echo -e "Hello World \n Dennis Uhlemann"
echo -e "Hello World \t Dennis Uhlemann"

