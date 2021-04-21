#!/bin/bash


############################
# Oliver Casillas Jaimes   #
# 04/20/2021               #
############################
###############################################################
# This program will replace all ocurrances ofa word "ABC"     #
# "DEF"  only those lines where the word "MNO" is located at. #
#							      #
# For this example, we will use an specific file called       #
# text_example.txt provoded in this repository                #
###############################################################


clear
echo "Here we go!"


getting_info() {

	local word_to_replace
	local word_replacing
	local condition_word



	echo ""
	echo "======================================"
	echo "Let's replace some words in this file!"
	echo "======================================"
	echo ""
	read -p "1) What is the word that you want to replace? > " word_to_replace
	read -p "2) [$word_to_replace] will be replaced with what word? > " word_replacing
	read -p "3) What is the specific condition word? > " condition_word
	echo -p "4) To demostrate this program we will be using a set file" 
	echo " called [text_example.txt]"


	echo "The original content of this file is the following: "
	echo ""
	cat text_example.txt

	echo "============================================================================="
	echo ""
	echo "The following is the new content after replacing the word [$word_to_replace]" 
        echo "with the word [$word_replacing] where the condition word [$condition_word]"
        echo "was found in the same line."
	echo ""

	sed -e "/$condition_word/ s/$word_to_replace/$word_replacing/g" text_example.txt


}


# MAIN

getting_info
