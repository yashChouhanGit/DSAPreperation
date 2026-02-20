1021. Remove Outermost Parentheses
Problem Link

📝 Description
A valid parentheses string is either empty "", "(" + A + ")", or A + B, where A and B are valid parentheses strings, and + represents string concatenation.

Example valid strings: "", "()", "(())()", and "(()(()))".

A valid parentheses string s is primitive if it is nonempty, and there does not exist a way to split it into s = A + B, with A and B nonempty valid parentheses strings.

Given a valid parentheses string s, consider its primitive decomposition: s=P 
1
​    
 +P 
2
​    
 +⋯+P 
k
​    
 , where P 
i
​    
  are primitive valid parentheses strings.

Task: Return s after removing the outermost parentheses of every primitive string in the primitive decomposition of s.

🚀 Examples
Example 1

Input: s = "(()())(())"

Output: "()()()"

Explanation: The input string is "(()())(())", with primitive decomposition "(()())" + "(())".

After removing outer parentheses of each part, this is "()()" + "()" = "()()()".

Example 2

Input: s = "(()())(())(()(()))"

Output: "()()()()(())"

Explanation: The input string is "(()())(())(()(()))", with primitive decomposition "(()())" + "(())" + "(()(()))".

After removing outer parentheses of each part, this is "()()" + "()" + "()(())" = "()()()()(())".

Example 3

Input: s = "()()"

Output: ""

Explanation: The input string is "()()", with primitive decomposition "()" + "()".

After removing outer parentheses of each part, this is "" + "" = "".
