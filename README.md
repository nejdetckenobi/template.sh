# template.sh

This script provides a template for project kick-offs.

## Installation

Just use the command below 

`bash -c "$(curl -fsS https://raw.githubusercontent.com/nejdetckenobi/template.sh/master/install-remote.sh)"`

## Usage

- Learn the project structure at `PROJECTPATH` and give it the nickname `NICKNAME` to it:

> `template.sh learn NICKNAME PROJECTPATH`


- Create a structure you saved with the nickname `NICKNAME` before, at the path `PATH`:
  (`PATH` will be created if it does not exists.)

> `template.sh apply NICKNAME PATH`


- Show all templates I saved/imported before.

> `template.sh show`


- This script compresses the project structure and saves it with the nickname you give. If you got a zip file of a project and want to use it in this script, you may use the command below:

> `template.sh import IMPORT_PATH`


- You can also export the templates you saved before with the command below.

> `template.sh export NICKNAME PATH`


- If you want to remove the template with the nickname of `NICKNAME`, you can use the command below.

> `template.sh remove NICKNAME`

