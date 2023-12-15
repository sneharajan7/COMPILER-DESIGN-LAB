%{
int vow_count=0;
int const_count =0;
%}

%%
[ \t\n]+ ;
[aeiouAEIOU]     {vow_count++;}
[^aeiouAEIOU]     {const_count++;}
%%

int yywrap(){}

int main()
{
printf("Enter the string of vowels and consonants:");
yylex();
printf("Number of vowels are: %d\n", vow_count);
printf("Number of consonants are: %d\n", const_count);
return 0;
} 
