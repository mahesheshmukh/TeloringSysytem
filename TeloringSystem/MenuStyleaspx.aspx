<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuStyleaspx.aspx.cs" Inherits="MenuStyleaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    #menu, #menu ul    {
list-style:none;
padding:0;
margin:0;
}
 

#menu li:hover ul, #menu li.over ul 
{
display:block;
} 
#menu li:hover ul ul, #menu li.over ul ul 
{ 
display:none;
} 

 
#menu ul li:hover ul, #menu ul li.over ul 
{ 
display:block;
} 

  
#menu a:hover 
{
background-color:#5798B4;
color:#fff;
}
    </style>
</head>
<body bgcolor="#c0c0c0">
    <form id="form2" runat="server">
    <ul id="Ul1">
        <li><a href="#" title="Homepage" class="selected">About Us</a></li>
        <li><a href="#" title="About us">Authors</a></li>
        <li><a href="#" title="Projects">Articles</a>
            <ul>
                <li><a href="#" title="Older projects">Older Articles</a>
                    <ul>
                        <li><a href="#" title="">ASP.Net </a></li>
                        <li><a href="#" title="">Silverlight</a></li>
                        <li><a href="#" title="">Ajax</a></li>
                    </ul>
                </li>
                <li><a href="#" title="Active projects">New Articles</a>
                    <ul>
                        <li><a href="" title="Excel FIle">File Upload</a></li>
                        <li><a href="" title="ConvertNoToString">Convert Number</a></li>
                        <li><a href="" title="Stored Procedure">Stored Procedure</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#" title="Contact">Contact Us</a></li>
    </ul>
    </form>
</body>
</html>
