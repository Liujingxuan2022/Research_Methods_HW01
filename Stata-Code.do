/* Type these commands to install the "estout" package: 
ssc install estout
Also: Note you can type help [command] into Stata to get help on any command. 
*/

* Read in data: 
insheet using assignment1-research-methods.csv, comma names clear

* Label your variables
label variable calledback "Call back"
label variable eliteschoolcandidate "Elite School"
label variable malecandidate "Gender"

* Run regression: 
reg calledback eliteschoolcandidate malecandidate  

* Store regression
eststo regression_two

**********************************
* FOR PEOPLE USING LaTeX: 
* Create output options. The below defaults are common and can be customized. 
*global tableoptions "bf(%15.2gc) sfmt(%15.2gc) prehead(\begin{tabular}{l*{14}{c}}) postfoot(\end{tabular}) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
*esttab regression_two using HW2-Table.tex, $tableoptions keep(eliteschoolcandidate) 


**********************************
* FOR PEOPLE USING MICROSOFT: 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_two using HW2-Table.rtf, $tableoptions keep (eliteschoolcandidate malecandidate)

**********************************
* FOR PEOPLE USING GOOGLE DOCS: 
* Use the code for MSFT, then copy/past the results into your table. 
