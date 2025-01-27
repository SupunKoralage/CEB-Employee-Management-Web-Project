<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CEBEmployeeManagment.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('../Images/Home.jpg'); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
        }
        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 100px; /* Adjust the width of the logo */
            height: auto;
        }

        /* Title inside the background image */
        .title {
            font-size: 36px;
            font-weight: bold;
            color: white;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            margin-bottom: 20px;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* Slight opacity to make background visible */
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 300px;
            z-index: 1; /* Ensures container is above the background */
        }
        .container h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Styling for the image above each button */
        .button-group img {
            width: 50px; /* Set the width of the images */
            height: 50px; /* Set the height of the images */
            margin-bottom: 10px; /* Space between image and button */
        }

        /* Base button styling */
        .asp-button {
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            background: linear-gradient(145deg, #6e7dff, #5560ea); /* Gradient background */
            border: 1px solid #4e5ce6; /* Border matching button background */
            border-radius: 50px; /* Rounded corners */
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        /* Button hover effect */
        .asp-button:hover {
            background: linear-gradient(145deg, #5560ea, #6e7dff); /* Reverse the gradient on hover */
            transform: translateY(-3px); /* Button lift effect */
            box-shadow: 3px 3px 7px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
        }

        /* Focus effect */
        .asp-button:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(75, 113, 255, 0.6); /* Focus outline with subtle glow */
        }

        /* Logout button styling */
        .logout-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            padding: 8px 15px;
            font-size: 16px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #c82333;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <img src="../Images/Logo.png" alt="Logo" class="logo" />
        <form id="form1" runat="server">
            <!-- Logout Button -->
            <asp:Button class="logout-btn" ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="Logout" />

            <!-- Title inside background image -->
            <div class="title">Southern Province <br />Welfare Society</div> 
            <br />
            <div class="container">
                <div class="button-group">
                    <!-- Employee Button with Image (ASP.NET Button) -->
                    <div>
                        <img src="../Images/employee.png" alt="Employee Icon" />
                        <asp:Button ID="BtnEmployee" runat="server" Text="Employee" OnClick="BtnEmployee_Click" CssClass="asp-button" />
                    </div>

                    <!-- Edit/View Button with Image (ASP.NET Button) -->
                    <div>
                        <img src="../Images/file.png" alt="Edit/View Icon" />
                        <asp:Button ID="BtnView" runat="server" Text="Edit / View" OnClick="BtnView_Click" CssClass="asp-button" />
                    </div>
                </div>
            </div>
        </form>
</body>
</html>
