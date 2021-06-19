# json4df
XSL conversion of JSON for Pandas dataframe

About:

Because the JSON file's retrieved through API’s are often nested, it is
difficult to put them into a dataframe appropriate for data analysis.
The proposed “json4df” function takes a JSON file and a custom XSL
template. It returns a JSON file transformed according to the template
ready to load in the Pandas dataframe.

Installation:

\$ pip install json4df

Dependencies:

The function needs the latest version of pandas, json2xml, lxml. 
Install if necessary. 
\$ pip install pandas==1.3.0rc1 
\$ pip install json2xml 
\$pip install lxml

How to use:

The json4df.py function will ask you to fill the
parameters with following values:

JSON - the path to the raw JSON 
XSL - the path to the xsl template
filename - desired name of resulting file

Use example:

You can run the json4dfDemo.py to check what the function does.
For the example I used the Twitter API.
Because of GDPR I made up the data of my request -- APIreq(1).json
The function calls this file and transforms it to according to the XSL template- template.xsl


Future:

The idea is to build a community for sharing of XSL templates. If you
wish to share, add your schema and description to the "XSL repository" folder.
