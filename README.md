# Bash_Scripts
Bash scripts that I make to practice.

Any recommendations on improvements let me know at reecemillsom@gmail.com.

## DEPENDENCIES

For script **./scripts/update_package_version.sh** you will need:

* moreutils for the use of sponge: ```sudo apt install moreutils```

* jq for the easy use of manipulating JSON files: ```sudo apt install jq```

## PS explanations

To find these configurations, go to **PS_Configurations** directory. Can test these out by running the command in the terminal. If you want to make these permanent then configure in your ~/.bashrc.

* **PS1:** Allows changing of your command prompt. To see current configuration use command ```echo $PS1```.
* **PS2:** Allows changing of your command prompt. Useful when entering very long commands. To see current configuration use command ```echo $PS2```. To test this enter some random characters then put \ . e.g. abcdef \ hit enter and you shall see your PS2.
