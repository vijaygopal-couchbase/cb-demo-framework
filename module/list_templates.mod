#@ List all templates in templates directory
#^ generic
EXEC~ls -ltra ./templates/*.template | tr -s " " | cut -d " " -f 9 | sed -e s+./templates/++g | more
