# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## .vimrc
My vim rc configuration does the following:
 --> "syntax on" allows for color highlighting based on syntax
 --> "set number" displays numbers in the left margin
 --> "set autoindent" indents lines based on proper syntax
 --> "set ruler" displays the line number and total lines in the bottom right hand corner of the page
 --> "color elflord" changes the color of the text
 --> "autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0" changes the width of a tab delimiter
 
## .bashrc
--> "Aliases" section allows for commands to be shortened in the terminal, such as "cdd" now performing the same task as "cd .."
--> "Functions" section allows faster ways of calling longer tasks, like creating and converting tar files

## Makefile
The makefile calls the recipe linux, with clean as a prerequisite. Clean calls the cleanup shell script, which removes .vimrc from the home directory, removes the source line from .bashrc using sed, and recursively removes the trash directory.
Once the clean is complete, the linux recipe calls the Linux shell, which checks if the system is operating in Linux with an if else statement, dumping the answer into a setup log. Then, another if statement checks if the .vimrc exists, creates .bup_vimrc to save that data, makes a .TRASH directory, and adds content from etc's vimrc to the home vimrc. It then adds a statement to the end of .bashrc, sourcing our setup to the bashrc we created (allowing for customization).
