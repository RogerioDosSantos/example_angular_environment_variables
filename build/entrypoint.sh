#!/usr/bin/env bash

replace_environment()
{
  #Usage: replace_environment <in:source> <in:destination>
  local source=$1
  local destination=$2
  echo "- ${source}: ${destination}"
  grep -rl "${source}" '/usr/share/nginx/html' | xargs sed -i "s|${source}|${destination}|g"
}

echo "Replacing Environment Variables:"
replace_environment "###ENVIRONMENT_RUNNINGENVIRONMENT###" "${RUNNINGENVIRONMENT}"
replace_environment "###ENVIRONMENT_VAR01###" "${VAR01}"
replace_environment "###ENVIRONMENT_VAR02###" "${VAR02}"
replace_environment "###ENVIRONMENT_VAR03###" "${VAR03}"

echo "Starting nginx:"
nginx -g "daemon off;"


