<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlightForm.aspx.cs" Inherits="TakeFlight.FlightForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form 1: Flight Form</title>
    <style type="text/css">
        .auto-style2 {
            width: 185px;
            border-top: 3px solid #ffeeaa; 
            border-bottom: 3px solid #ffeeaa; 
            border-right: 3px solid #ffeeaa; 
            border-left: 3px solid #ffeeaa; 
            margin-top: 20px; 
            margin-bottom: 20px;
            margin-left: 4%;
        }
        .auto-style4 {
            width: 399px;
            border-top: 3px solid #ffeeaa; 
            border-bottom: 3px solid #ffeeaa; 
            border-right: 3px solid #ffeeaa; 
            border-left: 3px solid #ffeeaa; 
            padding-left: 4%;
        }
        .auto-style5 {
            width: 399px;
            border-top: 3px solid #ffeeaa; 
            border-bottom: 3px solid #ffeeaa; 
            border-right: 3px solid #ffeeaa; 
            border-left: 3px solid #ffeeaa; 
            height: 180px;
            padding-left: 4%;
        }
        .auto-style6 {
            width: 185px;
            border-top: 3px solid #ffeeaa; 
            border-bottom: 3px solid #ffeeaa; 
            border-right: 3px solid #ffeeaa; 
            border-left: 3px solid #ffeeaa; 
            height: 180px;
            padding-left: 4%;
            margin-left: 4%;
        }
        .form {
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 120%; 
            font-family: 'Raleway', sans-serif;
            margin-left: 0px;
        }
        .divider {
            border-top: 4px solid #ffeeaa; 
            margin-top: 20px; 
            margin-bottom: 20px;
        }
        .auto-style8 {
            margin-left: 60px;
        }
        .auto-style9 {
            margin-left: 15px;
        }
        .back{
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 120%; 
        }
        .h2{
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 400%; 
            font-family: 'Raleway', sans-serif;
            margin-left: 250px;
        }
        .h4{
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 110%; 
            font-family: 'Raleway', sans-serif;
            margin-left: 450px;
            margin-top: -30px;
        }
        .image-and-text {
            display: inline-block;
            vertical-align: middle;
        }
        #imgFlight {
            vertical-align: middle;
            margin-left: 550px; /* Adjust this value for spacing */
        }
        #Image1 {
            vertical-align: middle;
            margin-left: 320px; /* Adjust this value for spacing */
        }

        .auto-style10 {
            width: 100%;
        }

        </style>
</head>
<body class="back">
<div class="image-and-text">
    <asp:Image ID="Image1" runat="server" ImageUrl="images/flights.png" Height="122px" Width="124px" />
    <asp:Image ID="imgFlight" runat="server" ImageUrl="images/flights.png" Height="122px" Width="124px" />
    <h2 class="h2">ARE YOU READY TO <br /> &nbsp;&nbsp;&nbsp;&nbsp; TAKE FLIGHT?</h2>
</div>
    <h4 class ="h4">Please fill in all of the fields below.</h4>
    <form id="form1" runat="server" class="form">
    <table class="auto-style10">
        
        <!-- Flight name -->
        <tr>
            <td class="auto-style4">
                <br />
                Create a name for your flight
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="FlightName" Text="" runat="server" Width="466px" CssClass="auto-style8"></asp:TextBox>
            </td>
        </tr>
        
        <!-- Number of drinks -->
        <tr>
            <td class="auto-style4">
                <br />
                Select the number of
                <br />
                drinks in your flight<br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlNumDrinks" runat="server" Width="483px" CssClass="auto-style8">
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <!-- Strength of drinks -->
        <tr>
            <td class="auto-style4">
                <br />
                Choose the strength of<br />
                your drinks<br />
&nbsp;<br />

            </td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="DrinkStrength" runat="server" CssClass="auto-style8" Width="506px">
                    <asp:ListItem Text=" Weak" Value="weak"></asp:ListItem>
                    <asp:ListItem Text=" Normal" Value="normal"></asp:ListItem>
                    <asp:ListItem Text=" Strong" Value="strong"></asp:ListItem>
                    <asp:ListItem Text=" Very Strong" Value="veryStrong"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                Select your base <br />
                liquor(s)</td>
            <td class="auto-style6">
                <asp:CheckBox ID="Vodka" runat="server" CssClass="auto-style9" Text=" Vodka" /> <br />
                <asp:CheckBox ID="Whiskey" runat="server" CssClass="auto-style9" Text=" Whiskey" /> <br />
                <asp:CheckBox ID="Rum" runat="server" CssClass="auto-style9" Text=" Rum" />  <br />
                <asp:CheckBox ID="Gin" runat="server" CssClass="auto-style9" Text=" Gin" /> <br />
                <asp:CheckBox ID="Brandy" runat="server" CssClass="auto-style9" Text=" Brandy" /> <br />
                <asp:CheckBox ID="Tequila" runat="server" CssClass="auto-style9" Text=" Tequila" /> <br />
            </td>
        </tr>
    </table>
        <p>
            <asp:Button ID="button1" runat="server" Text="Take Flight" Height="52px" Width="182px" />
        </p>
   </form>
</body>
</html>