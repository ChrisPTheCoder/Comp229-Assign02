<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        
    </h2>
    <center>
        
        <img src="../images/thanks.gif" /></center>
    <div id="summary">
        <fieldset><legend><center><img src="../images/summary.gif" /></center></legend>
            <table>
                <tr>
                    <td class="fieldLabel">Your name:</td>
               
            <td> <asp:Label runat="server" ID="lblName" /></td>
                     </tr>
                <tr>
                    <td class="fieldLabel">Your age:</td>
               
            <td> <asp:Label runat="server" ID="lblAge" /></td>
                </tr>
                 <tr>
                    <td class="fieldLabel">Your Gender:</td>
               
            <td> <asp:Label runat="server" ID="lblGender" /></td>
                </tr>
                 <tr>
                    <td class="fieldLabel">Type of product you purchase :</td>
               
            <td> <asp:Label runat="server" ID="lblProduct" /></td>
                </tr>
               <tr>
                    <td class="fieldLabel">Website you buy online :</td>
               
            <td> <asp:Label runat="server" ID="lblWeb" /></td>
                </tr>
                <tr>
                    <td class="fieldLabel">You do shopping online :</td>
               
            <td> <asp:Label runat="server" ID="lblOften" /></td>
                </tr>
                <tr>
                    <td class="fieldLabel">Your payment method: </td>
               
            <td> <asp:Label runat="server" ID="lblPayment" /></td>
                </tr>
                
                </table>
            
            </fieldset>
        <a href="https://www.amazon.ca/">For more information, please click</a>
        </div>
     <style>
         a:hover{
             text-decoration:none;
         }
        body {
              background-color:antiquewhite
        }
        #summary{width:800px; margin:0 auto;}
        .fieldLabel {
            width:72%;
            text-align:right;
        }
        td{
            padding: 15px;
            font-size:large
        }
         fieldset {
             margin-bottom: 20px;
             border-radius: 10px;
             box-shadow: 5px 5px 5px #666666;
             padding: 10px;
             background-color: palegoldenrod;
             position: relative;
         }
         legend{
             background-color:burlywood;
             border-radius:20px;
         }
         table{
             padding-left:30px;
         }
    </style>
</asp:Content>
