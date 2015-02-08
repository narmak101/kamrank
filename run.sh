#!/bin/bash

ALLOPTIONS="
--appendPort=true: append port to baseurl 
--baseUrl="": hostname (and path) to the root eg. http://spf13.com/ 
--buildDrafts=false: include content marked as draft 
--buildFuture=false: include content with datePublished in the future 
--config="": config file (default is path/config.yaml|json|toml) 
--destination="": filesystem path to write files to 
--disableLiveReload=false: watch without enabling live browser reload on rebuild 
--disableRSS=false: Do not build RSS files 
--disableSitemap=false: Do not build Sitemap file 
--help=false: help for server 
--log=false: Enable Logging 
--logFile="": Log File path (if set, logging enabled automatically) 
--pluralizeListTitles=true: Pluralize titles in lists using inflect 
--port=1313: port to run the server on 
--source="": filesystem path to read files relative from 
--stepAnalysis=false: display memory and timing of different steps of the program 
--theme="": theme to use (located in /themes/THEMENAME/) 
--uglyUrls=false: if true, use /filename.html instead of /filename/ 
--verbose=false: verbose output 
--verboseLog=false: verbose logging 
--watch=false: watch filesystem for changes and recreate as needed 
"

OPTIONS=" \
--disableRSS=true \
--disableSitemap=false \
--log=true \
--logFile=access.log \
--theme=hugoscroll \
"

echo "hugo server $OPTIONS"
hugo server $OPTIONS --watch
