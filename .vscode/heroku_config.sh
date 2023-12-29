if [[ -z "${HEROKU_API_KEY}" ]]; then
   echo Paste your Heroku API key here or press Enter to quit:
   read apikey
   if [[ -z "${apikey}" ]]; then
      return 0
   fi
   echo export HEROKU_API_KEY=${apikey} >> ~/.bashrc
   echo Added the export. Refreshing the terminal.
   . ~/.bashrc > /dev/null
   echo Done!
else
   echo API key is already set. Exiting
fi