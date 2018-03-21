package atividade1;

%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras léxicas abaixo */

whitespace = [\n|\t|\f|\r]

%%

/* whitespace e comentarios serao ignorados */
{whitespace} {}

/* palavras reservadas */
package             { System.out.println("Token PACKAGE"); }
import              { System.out.println("Token IMPORT"); }
boolean             { System.out.println("Token BOOLEAN"); }
class				{ System.out.println("Token CLASS"); }
public				{ System.out.println("Token PUBLIC"); }
extends				{ System.out.println("Token EXTENDS"); }
static				{ System.out.println("Token STATIC"); }
void				{ System.out.println("Token VOID"); }
main				{ System.out.println("Token MAIN"); }
String				{ System.out.println("Token STRING"); }
int					{ System.out.println("Token INT"); }
while				{ System.out.println("Token WHILE"); }
if					{ System.out.println("Token IF"); }
else				{ System.out.println("Token ELSE"); }
return				{ System.out.println("Token RETURN"); }
length				{ System.out.println("Token LENGTH"); }
true				{ System.out.println("Token TRUE"); }
false				{ System.out.println("Token FALSE"); }
this				{ System.out.println("Token THIS"); }
new					{ System.out.println("Token NEW"); }
System.out.println  { System.out.println("Token SYSOPRINTLN"); }
    
/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
