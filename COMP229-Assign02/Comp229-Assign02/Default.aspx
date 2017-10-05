<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <img id="bubble" src="../images/speech.gif" />
        <img src="../images/CP.gif" />
        <img src="../images/shopping.gif" /><br />
        <img src="../images/signbot.gif" />
        

    </div>

 <center><img src="../images/header.gif" /></center>
        <div id="header">
            <h2>Online Shopping Experience Survey</h2>
            
            <p id="form">
             Hello from CP, <br /><br />

            Recently online shopping has become more and more popular. 
            We are especially interested in investigating how well services
            are delivered through the internet. Therefore we have designed a 
            survey which will evaluate your online shopping experience. 
            There are 8 questions and it will take approximately 3 minutes
            to complete the questionnaire. <br /><br />

            We believe that the outcome of this survey will benefit both the 
            customers and the service providers. Therefore, we would like to 
            thank you in advance for providing valuable information for our research. 
            This will help us analyse what is important to consumers and how the website rate against that.<br /><br />

            Thank you for your time and support. Please start the survey now by clicking on the button below.
   
            
            
                <center><a href="../Survey.aspx"><img width="200" height="200" src="../images/arrow.gif" /></a></center>
            </p>
           

        </div>
    <p><a style="text-decoration:none" href="https://www.surveymonkey.com/mp/policy/privacy-policy/">*Disclaimer and privacy policy</a></p>
       <style>
           h2{background-color: darkorange; padding:20px; border-radius: 5px;}
           #form{background-color: wheat; padding: 20px; border-radius: 5px;}
           #header {
               width: 800px;
               margin: 0 auto;
           }
           body {background-color:antiquewhite}

           #bubble {
               float: right;
               top: 50px
           }
                   
          
       </style>
   

</asp:Content>
