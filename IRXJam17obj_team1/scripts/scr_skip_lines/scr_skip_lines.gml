/// @description skip line after set amount of character
/// @param string
/// @param char_numb
/// @return string_skipped_lines

var s = argument0;
var char_numb = argument1;

//add skipped lines if needed
var sub_string =""; //tmp var used to skip lines
for(var i= 1; i<= string_length(s); i++)
{
	var char = string_char_at(s, i);
	var char_1 = string_char_at(s, i+1);
	
	if((char_1 != "!") || (char_1 != ".") || (char_1 != "?")) ||
	((char != "!") || (char != ".") || (char != "?"))
	{
			
	if((string_length(sub_string)% char_numb) == 0) && (string_length(sub_string) != 0)  //if need to skip a line
	{
		if(char_1 != " ") //skip line if white space
		sub_string += "-"; 
	
		sub_string += "\n"; //skip line
		}
	}
	
	
	//add char
	sub_string = sub_string + string_char_at(s, i);
	
}


return sub_string;