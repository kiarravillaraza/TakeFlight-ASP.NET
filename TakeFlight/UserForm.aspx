<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="TakeFlight.UserForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form 2: User Form</title>
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
        .back{
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 120%; 
        }
        .h2{
            background-color: #1c1c1c;
            color: #ffffff;
            font-size: 350%; 
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
            margin-left: 550px; 
        }
        #Image1 {
            vertical-align: middle;
            margin-left: 320px;
        }

        .auto-style9 {
            width: 100%;
        }
    .datePicker {
        border-color: white;
    }

    .datePicker th, .datePicker td {
        border: 1px solid white;
            color: #7e96bc !important;

    }

    .datePicker a, .datePicker td a {
    color: #7e96bc !important;
    }
        </style>
<script>
    function ValidateForm() {
        // Your client-side validation logic here
        var fullName = document.getElementById('<%= FullName.ClientID %>').value;
        var username = document.getElementById('<%= Username.ClientID %>').value;
        var password = document.getElementById('<%= Password.ClientID %>').value;
        var selectedDate = document.getElementById('<%= calBirthday.ClientID %>').value;
        document.getElementById('<%= txtSelectedDate.ClientID %>').value = selectedDate;

        // Checks if any of the fields are empty
        if (fullName === '' || username === '' || password === '') {
            alert('All fields must be filled out.');
            return false; 
        }

        // If passes, proceed with server-side logic
        return true;
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body class="back">
<div class="image-and-text">
    <asp:Image ID="Image1" runat="server" ImageUrl="images/flights.png" Height="122px" Width="124px" />
    <asp:Image ID="imgFlight" runat="server" ImageUrl="images/flights.png" Height="122px" Width="124px" />
    <h2 class="h2">PREPARE TO TAKE FLIGHT</h2>
</div>
    <h4 class ="h4">Please fill in all of the fields below.</h4>
    <form id="form1" runat="server" class="form">
    <table class="auto-style9">
        
        <!-- Full name -->
        <tr>
            <td class="auto-style4">
                <br />
                Enter your full name
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="FullName" Text="" runat="server" Width="705px" CssClass="auto-style8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FullNameValidator" runat="server"
                    ControlToValidate="FullName"
                    Display="Dynamic"
                    ErrorMessage="Full name is required"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <!-- Username -->
        <tr>
            <td class="auto-style4">
                <br />
                Create a username
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="Username" Text="" runat="server" Width="705px" CssClass="auto-style8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UsernameValidator" runat="server"
                    ControlToValidate="Username"
                    Display="Dynamic"
                    ErrorMessage="Username is required"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Password -->
        <tr>
            <td class="auto-style4">
                <br />
                Create a password
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="Password" Text="" runat="server" Width="705px" CssClass="auto-style8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server"
                    ControlToValidate="Password"
                    Display="Dynamic"
                    ErrorMessage="Password is required"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td class="auto-style4">
                <br />
                Enter your birthday
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:Calendar ID="calBirthday" runat="server" SelectionMode="Day" CssClass="datePicker"></asp:Calendar>
                <asp:TextBox ID="txtSelectedDate" runat="server" style="display: none;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBirthday" runat="server"
                    ControlToValidate="txtSelectedDate"
                    Display="Dynamic"
                    ErrorMessage="Please select your birthday">*</asp:RequiredFieldValidator>

                <br />
             </td>
        </tr>

    </table>
        <p>
            <asp:Button ID="CreateAccount" runat="server" Text="Create Account" Height="52px" Width="182px" OnClientClick="return ValidateForm();" />
        </p>
   </form>
</body>
</html>