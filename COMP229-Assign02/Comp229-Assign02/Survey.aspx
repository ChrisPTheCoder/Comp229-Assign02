<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <center>
    <img src="../images/survey.gif" />
    
    <br /><img height="50" width="50" src="../images/pencil.gif" /><img src="../images/start.png" /><img height="50" width="50" src="../images/pencil.gif" /> </center>
    <div id="survey" style="width:800px; margin:0 auto;">
        
        <p>
            Please enter your name: <br /> 
           <%-- Text Box--%>
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            <p id="error">
                <%--Required Field Validator--%>
                <asp:RequiredFieldValidator ID="rfvName"
                runat ="server"
                ControlToValidate="nameTextBox"
                ErrorMessage="*Name cannot be left blank"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p>
            Please enter your name again: <br />
            <asp:TextBox ID="confirmNameTextBox" runat="server"></asp:TextBox>
            <p id="error"><asp:RequiredFieldValidator ID="rfvName2"
                runat ="server"
                ControlToValidate="confirmNameTextBox"
                ErrorMessage="*Name cannot be left blank"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
            <p id="error"> 
               <%--Compare Validator--%>
                <asp:CompareValidator id="compareName" 
              runat="server"
              ControlToCompare="nameTextBox"
              ControlToValidate="confirmNameTextBox"
              ErrorMessage="Your name does not match! Please enter again"
               SetFocusOnError="true" />
            </p>
        </p>
        </p>
        <p>
           Please enter your age: <br />
            <asp:TextBox ID="age" runat="server" TextMode="Number" />
            <p id="error">
                <%--Range Validator--%>
                <asp:RangeValidator ID="rvAge" runat="server"
             ControlToValidate="age" 
             ErrorMessage="Under 5 Is Not Right! Please enter again." 
              MaximumValue="100"

            MinimumValue="5" Type="Integer" ></asp:RangeValidator></p>
            <p id="error"><asp:RequiredFieldValidator ID="rfvAge" 
                runat="server"
                ControlToValidate="age"
                ErrorMessage="*Age cannot be left blank"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p> 
            Please indicates your gender: <br />
           <%-- DropDown List--%>
            <asp:DropDownList ID="genderList" runat="server">
                <asp:ListItem Text="Male" />
                <asp:ListItem Text="Female" />
            </asp:DropDownList>
            
            <p id="error">
            <asp:RequiredFieldValidator ID="rvfGender" 
                runat="server"
                ControlToValidate="genderList"
                ErrorMessage="*Please choose one choice"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p> 
            How often do you buy product online? <br />
           <%-- RadioButton--%>
            <asp:RadioButtonList ID="often" runat="server">
                <asp:ListItem Text="Extremely often" />
                 <asp:ListItem Text="Quite often" />
                 <asp:ListItem Text="Moderately often" />
                 <asp:ListItem Text="Slightly often" />
                <asp:ListItem Text ="Not at all often" />
            </asp:RadioButtonList>
           <p id="error"> <asp:RequiredFieldValidator ID="rvfOften" 
                runat="server"
                ControlToValidate="often"
                ErrorMessage="*Please choose one choice"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p>
            Please select the website you use to shop online: <br />
           <asp:DropDownList ID="onlineWeb" runat="server">
               <asp:ListItem Text="Amazon" />
               <asp:ListItem Text="Bestbuy" />
               <asp:ListItem Text="Costco" />
               <asp:ListItem Text="eBid" />
               <asp:ListItem Text="Other" />
           </asp:DropDownList>
            <p id="error"><asp:RequiredFieldValidator ID="rvfWeb" 
                runat="server"
                ControlToValidate="onlineWeb"
                ErrorMessage="*Please choose one choice"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p>What types of product do you purchase on the internet?<br />
            <asp:TextBox ID="productTextBox" runat="server" placeholder="clothes, shoes,...etc"></asp:TextBox>
        </p>
        <p id ="error"><asp:RequiredFieldValidator ID="rvfProduct" 
                runat="server"
                ControlToValidate="productTextBox"
                ErrorMessage="*Product cannot be left blank"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
         <p> 
            Please choose payment method you use most often when buying products online: <br />
              <asp:RadioButtonList ID="payment" runat="server">
                <asp:ListItem Text ="Credit card" />
                 <asp:ListItem Text ="Dedit card" />
                <asp:ListItem Text ="PayPal" />
                <asp:ListItem Text ="Other" />
            </asp:RadioButtonList>
             <p id="error">
            <asp:RequiredFieldValidator ID="rvfPayment" 
                runat="server"
                ControlToValidate="payment"
                ErrorMessage="*Please choose one choice"
                SetFocusOnError="true"></asp:RequiredFieldValidator></p>
        </p>
        <p>
           <asp:Button Width="90px" Height="40" ID="ConfirmButton" onClick="ConfirmButton_Click" runat="server" Text="Confirm" BackColor="#33CC33" Font-Bold="True" Font-Size="Small" ForeColor="White" /><img height="25" width="25" src="../images/tick.gif" />
        </p>
        
       
        
    </div>

    <style>
        #survey {border-radius: 10px;
             background-image:url("../images/pastel.jpg");
             
            padding:30px;
        }
       
        body {background-image:url("../images/raining-stars.gif");
              background-color:antiquewhite
        }
        #error {color:red}

    </style>
     

            
</asp:Content>
