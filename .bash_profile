#!/bin/bash

ORIGINAL_IFS=$IFS

# Source colors
source $HOME/.bash_colors

function ok {
    echo -e "[${LIGHTGREEN}OK${NC}]"
}

function failure {
    echo -e "${NC}[${RED}ERROR${NC}] ${LIGHTRED}$@ !!!${NC}"
}

echo -e "${DARKGRAY}************************************ ${NC}"
echo -e "${LIGHTGREEN}Loading Profile for ${YELLOW}$USER ${LIGHTGREEN}...${NC}"
echo -e "\t${LIGHTGREEN}Starting Keychain ...${NC}"

# For password less authentication
# Check if you are in yroot, if in yroot dont load keychain
YROOT=`/bin/env | grep root`

if [ -n "$YROOT" ]; then

    echo -e "\t\t${LIGHTBLUE}Inside yroot. ${LIGHTPURPLE}Skipping keychain loading...${NC}"
else
    # KeyChain
    echo -e "\t\t${LIGHTGREEN}Status       ... ${NC}\c "

	if [ -e $HOME/keychain ]; then

	    KEYCHAIN_PATH="$HOME/keychain"

	    if [ -e $HOME/.ssh/id_rsa ]; then

            $KEYCHAIN_PATH -q $HOME/.ssh/id_rsa

            if [ -e $HOME/.keychain/${HOSTNAME}-sh ]; then

                . $HOME/.keychain/${HOSTNAME}-sh
                ok
            else
                failure "Cannot find Keychain output file"
		fi
	    else
            failure "Cannot find RSA Key"
	    fi
	else
	    failure "Cannot find Keychain"
	fi

    # YROOTs
    YROOT_LIST=`yroot -list`

    if [ -n "$YROOT_LIST" ]; then

        echo -e "\t${LIGHTGREEN}YROOT List${NC}"
        IFS=$'\n'
        for line in $YROOT_LIST
        do
            echo -e "\t\t${BLUE}$line${NC}"
        done

        # Change back to original
        IFS=$ORIGINAL_IFS
    fi
fi

echo -e "\t${LIGHTGREEN}Loading .bash_prompt ... ${NC}\c "

if [ -e $HOME/.bash_prompt ]; then

    source $HOME/.bash_prompt
    ok
else
    failure "Cannot find $HOME/.bash_prompt file"
fi

# Source .bashrc
echo -e "\t${LIGHTGREEN}Loading .bashrc      ... ${NC}\c "

if [ -e $HOME/.bashrc ]; then
    source $HOME/.bashrc
    ok
else
    failure "Cannot find $HOME/.bashrc file"
fi

echo -e "${DARKGRAY}************************************ ${NC}"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
