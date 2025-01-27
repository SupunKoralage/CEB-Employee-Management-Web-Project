<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CEBEmployeeManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('../Images/CEB Login.jpg');
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    /* Logo styles */
    .logo {
        position: absolute;
        top: 20px;
        left: 20px;
        width: 100px; /* Adjust the width of the logo */
        height: auto;
    }

    .title {
        font-size: 36px;
        font-weight: bold;
        color: white;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        margin-bottom: 20px;
        text-align: center;
    }

    .container {
        width: 400px;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.95);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        text-align: center;
    }

    h2 {
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 20px;
        text-align: left;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        outline: none;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .button-group {
        margin-top: 25px;
        display: flex;
        gap: 80px; /* Add space between buttons */
    }

    /* Styling for both buttons */
    button {
        flex: 1;
        padding: 14px;
        border: none;
        border-radius: 5px;
        font-size: 25px;
        font-weight: bold;
        color: white;
        cursor: pointer;
        transition: all 0.3s ease;
        min-width: 150px; /* Ensures buttons have a decent width */
    }

    /* Login button styles */
    #BtnLogin {
        box-shadow: 0 4px 6px rgba(0, 123, 255, 0.4);
        font-size: 20px;
        font-weight: bold;
        min-width: 150px;
        height : 35px;
    }
    #BtnLogin:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 10px rgba(0, 123, 255, 0.5);
    }

    /* Clear button styles */
    #BtnClear {
        box-shadow: 0 4px 6px rgba(108, 117, 125, 0.4);
        font-size: 20px;
        font-weight: bold;
        min-width: 150px;
    }
    #BtnClear:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 10px rgba(108, 117, 125, 0.5);
        font-size: 20px;
        font-weight: bold;
    }

    .message {
        margin-top: 20px;
        color: red;
        font-size: 16px;
    }
</style>
</head>
<body>
    <!-- Logo on the top-left corner -->
    <img src="../Images/Logo.png" alt="Logo" class="logo" />

    <div class="title">C E B / Southern Province <br /><br />Welfare Society</div>
    <form id="form2" runat="server">
        <div class="container">
            <h2>Login</h2>
            <div class="form-group">
                <label for="TxtUsername">Username:</label>
                <asp:TextBox ID="TxtUsername" runat="server" Width="350px" AutoPostBack="false"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TxtPassword">Password:</label>
                <asp:TextBox ID="TxtPassword" runat="server" Width="350px" TextMode="Password"></asp:TextBox>
            </div>
            <div class="button-group">
                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-login" OnClick="BtnLogin_Click" />
                <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="btn btn-clear" OnClick="BtnClear_Click" />
            </div>
            <br />
            <asp:Label ID="LblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
