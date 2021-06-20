import pandas as pd
from json2xml import json2xml
from json2xml.utils import readfromjson,readfromstring
import lxml
import lxml.etree as ET

def json4df (json, xsl, filename):
    data = readfromjson(json)
    xml_data=json2xml.Json2xml(data).to_xml()
    parser = ET.HTMLParser(recover=True)
    dom = ET.fromstring(xml_data, parser)
    xslt = ET.parse(xsl)
    transform = ET.XSLT(xslt)
    newdom = transform(dom)
    et=ET.tostring(newdom)
    df=pd.read_xml(et)
    df.to_json(filename)
    return df

json4df(json=input("Write the full filename of your raw JSON: "),xsl=input("Write the full filename of your xsl template: "),filename=input("Write the desired full filename of output JSON: "))