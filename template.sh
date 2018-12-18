#!/usr/bin/env bash
function _project_learn(){
    if [ -z "$2" ] && [ "$1" "!=" "default" ] || [ -z "$1" ]
    then
        echo "Usage: template.sh learn NICKNAME PROJECTPATH"
        return 1
    elif [ -d "$2" ]
    then
        cd "$2"
    if [ -f "$HOME/.project-structures/$1.zip" ]
    then
        rm "$HOME/.project-structures/$1.zip"
    fi
        zip -9r "$HOME/.project-structures/$1.zip" ./* -x "*env/*" -x "*__pycache__/*" -x "*.pyc" -x "*.git/*"
        cd -
    else
        echo "No such directory: $2"
    fi
}

function _project_apply(){
    if [ -z "$1" ] || [ -z "$2" ]
    then
        echo "Usage: template.sh apply NICKNAME PATH"
        return 1
    elif [ ! -d "$2" ]
    then
        mkdir "$2"
    fi
    cd "$2"
    unzip "$HOME/.project-structures/$1.zip"
    cd -
}

function _project_show(){
    for item in $(ls "$HOME/.project-structures")
    do
        echo "- $(basename "$item" ".zip")"
    done
}

function _project_import(){
    if [ -z "$1" ]
    then
        echo "Usage: template.sh import IMPORT_PATH"
        return 1
    fi
    cp $1 "$HOME/.project-structures"
}

function _project_export(){
    if [ -z "$1" ] || [ -z "$2" ]
    then
        echo "Usage: template.sh export NICKNAME EXPORT_PATH"
        return 1
    elif [ -z "$HOME/.project-structures/$1.zip" ]
    then
        echo "No template named '$1'."
        return 1
    elif [ ! -d "$2" ]
    then
        echo "Directory does not exists."
        return 1
    fi
    cp "$HOME/.project-structures/$1.zip" "$2"
}

function _project_remove(){
    if [ -z "$1" ]
    then
        echo "Usage: template.sh remove NICKNAME"
    fi
    rm "$HOME/.project-structures/$1.zip"
}

# Here is the actual script

if [ ! -d "$HOME/.project-structures" ]; then
    mkdir "$HOME/.project-structures"
fi

case "$1" in
    "learn") _project_learn $2 $3;;
    "apply") _project_apply $2 $3;;
    "show") _project_show;;
    "import") _project_import $2;;
    "export") _project_export $2 $3;;
    "remove") _project_remove $2;;
    *) echo "Usage: $(basename $0) learn NICKNAME PROJECTPATH";
       echo "Usage: $(basename $0) apply NICKNAME PATH";
       echo "Usage: $(basename $0) show";
       echo "Usage: $(basename $0) import PATH";
       echo "Usage: $(basename $0) export NICKNAME PATH";
       echo "Usage: $(basename $0) remove NICKNAME";;
esac
