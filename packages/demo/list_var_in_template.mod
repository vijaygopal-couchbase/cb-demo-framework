#@ List out all templated variables in a specific template
#^ generic,template
PROMPT~Enter template to get variables from~TFILE~
EXEC~grep -o -e "[{][{][^}]*[}][}]" ./templates/{{TFILE}} | sed -e s/{//g | sed -e s/}//g | sort -u