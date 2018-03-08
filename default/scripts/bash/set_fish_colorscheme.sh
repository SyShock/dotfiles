#!/bin/fish

 source ~/.cache/wal/colors.sh

export fish_color_normal=$color15		# the default color
export fish_color_command=$color1		# the color for commands
export fish_color_quote=$color2			# the color for quoted blocks of text
export fish_color_redirection=$color3	# the color for IO redirections
export fish_color_end=$color4			# the color for process separators like ';' and '&'
export fish_color_error=$color8			# the color used to highlight potential errors
export fish_color_param=$color5			# the color for regular command parameters
export fish_color_comment=$color6		# the color used for code comments
export fish_color_match=$color5			# the color used to highlight matching parenthesis
export fish_color_search_match_bg="--background=${color6//#/}"	# the color used to highlight history search matches
export fish_color_search_match=$color6	# the color used to highlight history search matches
#export fish_color_operator=$color5					# the color for parameter expansion operators like '*' and '~'
#export fish_color_escape=$color5					# the color used to highlight character escapes like '\n' and '\x70'
#export fish_color_cwd=$color5						# the color used for the current working directory in the default prompt
#export fish_color_autosuggestion=$color5			# the color used for autosuggestions
#export fish_color_user=$color5						# the color used to print the current username in some of fish default prompts
#export fish_color_host=$color5						# the color used to print the current host system in some of fish default prompts
#export fish_color_cancel=$color5					# the color for the '^C' indicator on a canceled command

#Additionally, the following variables are available to change the highlighting in the completion pager:

export fish_pager_color_prefix=$color8		# the color of the prefix string, i.e. the string that is to be completed
export fish_color_pager_completion=$color7	# the color of the completion itself
#export fish_pager_color_description=$color5			# the color of the completion description
export fish_pager_color_progress=$color5				# the color of the progress bar at the bottom left corner
export fish_pager_color_secondary=$color5				# the background color of the every second completion
