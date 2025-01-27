<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="CEBEmployeeManagment.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            background-color: #f0f4f8;
            color: #333;
        }

        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 1200px;
            margin-top: 20px;

        }

        
        h1{
            font-size: 36px; #007bff
            font-weight: bold;
            color: black;
            text-align: center;
        }

        h2{
            font-weight: bold;
            color: #007bff;
            text-align: center;
            margin-bottom: 30px;
            font-size: 25px;
        }

        h3 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .form-column {
            flex: 1;
            min-width: 300px;
            max-width: 800px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }

        label {
            font-weight: bold;
            font-size: 18px;
            color: #555;
            margin-right: 15px;
            display: inline-block;
            width: 220px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 18px;
            outline: none;
            background-color: #fafafa;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        .btn-submit {
            width: 20%;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f0f4f8;
            color: #333;
        }

        td input[type="text"] {
            width: 90%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .form-group-small {
            margin-bottom: 5px;
        }

        @media (max-width: 768px) {
            .form-container {
                width: 90%;
            }

            label {
                width: auto;
                margin-bottom: 10px;
            }
        }

        .home-button {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .btn-home {
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #218838;
        }
        #LblError {
            color: red;    /* Error text color */
            margin-top: 5px; /* Add spacing between the text box and error label */
            font-size: 17px; /* Adjust font size for readability */
            padding-right:190px;
        }
        /* Spacing between text boxes in the Family Information section */
        .form-group input[type="text"] {
            margin-right: 15px; /* Adds space between input boxes */
        }

        /* Increase naming label width */
        .form-group label {
            width: 400px; /* Increased width of labels for better alignment */
        }
        .form-group {
            margin-bottom: 20px;
            display: flex;
            justify-content: flex-end; /* Align the submit button to the right */
        }
        .logo {
            position: absolute;
            top: 60px;
            left: 150px;
            width: 100px; /* Adjust the width of the logo */
            height: auto;
        }

    </style>
</head>

<body>
    <img src="../Images/Logo.png" alt="Logo" class="logo" />
            <form id="form2" runat="server">
                <div class="home-button">
                    <asp:Button ID="BtnHome" runat="server" Text="Home" CssClass="btn-home" OnClick="BtnHome_Click" />
                </div>

                <div class="form-container">
                    <h1>Southern Province - Welfare Society</h1>
                    <h2>Employee Information</h2>

                    <!-- Employee Details -->
                    <div class="form-row">
                        <!-- Include all Employee Details from the first page -->
                        <div class="form-group">
                            <label for="TxtEmpNum">Employee Number:</label>
                            <asp:TextBox ID="TxtEmpNum" runat="server" placeholder="Enter Employee Number" />
                        </div>
                            <asp:Label ID="LblError" runat="server" ForeColor="Red" Text="" />
                

                        <div class="form-group">
                            <label for="TxtName">Full Name:</label>
                            <asp:TextBox ID="TxtName" runat="server" placeholder="Enter Full Name" />
                        </div>

                        <div class="form-group">
                            <label for="TxtDesigantion">Designation:</label>
                            <asp:TextBox ID="TxtDesigantion" runat="server" placeholder="Enter Designation" />
                        </div>

                        <div class="form-group">
                            <label for="TxtEPFNum">EPF Number:</label>
                            <asp:TextBox ID="TxtEPFNum" runat="server" placeholder="Enter EPF Number" />
                        </div>

                        <div class="form-group">
                            <label for="TxtBranch">Branch:</label>
                            <asp:TextBox ID="TxtBranch" runat="server" placeholder="Enter Branch" />
                        </div>

                        <div class="form-group">
                            <label for="textPAddress">Address:</label>
                            <asp:TextBox ID="textPAddress" runat="server" placeholder="Enter Address" />
                        </div>

                        <div class="form-group">
                            <label for="TxtEmpDOB">Date of Birth:</label>
                            <asp:TextBox ID="TxtEmpDOB" runat="server" placeholder="Enter Date of Birth" />
                        </div>

                        <div class="form-group">
                            <label for="TxtKName">Spouse's Name:</label>
                            <asp:TextBox ID="TxtKName" runat="server" placeholder="Enter Spouse's Name" />
                        </div>
                        <table>
                        <thead>
                            <tr>
                                <th>Child Name</th>
                                <th>Date of Birth</th>
                                <th>Other Information</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><asp:TextBox ID="TxtChild1Name" runat="server" placeholder="Enter Child 1 Name" /></td>
                                <td><asp:TextBox ID="TxtChild1DOB" runat="server" placeholder="Enter Child 1 Date of Birth" /></td>
                                <td><asp:TextBox ID="TxtChildOther1" runat="server" placeholder="Enter Other Information" /></td>
                            </tr>
                            <tr>
                                <td><asp:TextBox ID="TxtChild2Name" runat="server" placeholder="Enter Child 2 Name" /></td>
                                <td><asp:TextBox ID="TxtChild2DOB" runat="server" placeholder="Enter Child 2 Date of Birth" /></td>
                                <td><asp:TextBox ID="TxtChildOther2" runat="server" placeholder="Enter Other Information" /></td>
                            </tr>
                            <tr>
                                <td><asp:TextBox ID="TxtChild3Name" runat="server" placeholder="Enter Child 3 Name" /></td>
                                <td><asp:TextBox ID="TxtChild3DOB" runat="server" placeholder="Enter Child 3 Date of Birth" /></td>
                                <td><asp:TextBox ID="TxtChildOther3" runat="server" placeholder="Enter Other Information" /></td>
                            </tr>
                            <tr>
                                <td><asp:TextBox ID="TxtChild4Name" runat="server" placeholder="Enter Child 4 Name" /></td>
                                <td><asp:TextBox ID="TxtChild4DOB" runat="server" placeholder="Enter Child 4 Date of Birth" /></td>
                                <td><asp:TextBox ID="TxtChildOther4" runat="server" placeholder="Enter Other Information" /></td>
                            </tr>
                            <tr>
                                <td><asp:TextBox ID="TxtChild5Name" runat="server" placeholder="Enter Child 5 Name" /></td>
                                <td><asp:TextBox ID="TxtChild5DOB" runat="server" placeholder="Enter Child 5 Date of Birth" /></td>
                                <td><asp:TextBox ID="TxtChildOther5" runat="server" placeholder="Enter Other Information" /></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>

                    <!-- Family Details -->
                    <h3>Family Information</h3>
                    <div class="form-group">
                        <label for="TxtFName">Member's living Father:</label>
                        <asp:TextBox ID="TxtFName" runat="server" placeholder="Enter Father's Name" Width="750px"></asp:TextBox>
                        <asp:TextBox ID="TxtFOther" runat="server" placeholder="Other Details"></asp:TextBox>
                    </div>

                    <!-- Mother's Details -->
                    <div class="form-group">
                        <label for="TxtMName">Member's living Mother:</label>
                        <asp:TextBox ID="TxtMName" runat="server" placeholder="Enter Mother's Name" Width="750px"></asp:TextBox>
                        <asp:TextBox ID="TxtMOther" runat="server" placeholder="Other Details"></asp:TextBox>
                    </div>

                    <!-- Spouse's Father's Details -->
                    <div class="form-group">
                        <label for="TxtKFName">Spouse's living Father:</label>
                        <asp:TextBox ID="TxtKFName" runat="server" placeholder="Enter Spouse's Father's Name" Width="750px"></asp:TextBox>
                        <asp:TextBox ID="TxtKFOther" runat="server" placeholder="Other Details"></asp:TextBox>
                    </div>

                    <!-- Spouse's Mother's Details -->
                    <div class="form-group">
                        <label for="TxtKMName">Spouse's living Mother:</label>
                        <asp:TextBox ID="TxtKMName" runat="server" placeholder="Enter Spouse's Mother's Name" Width="750px"></asp:TextBox>
                        <asp:TextBox ID="TxtKMOther" runat="server" placeholder="Other Details"></asp:TextBox>
                    </div>
                     <h3>Brothers' Information</h3>
                 <table class="data-table brothers-info">
                     <thead>
                         <tr>
                             <th>Brother's Name</th>
                             <th>Other Details</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td>
                                 <asp:TextBox ID="TxtBrotherName1" runat="server" placeholder="Enter Brother's Name"></asp:TextBox>
                             </td>
                             <td>
                                 <asp:TextBox ID="TxtBrotherOther1" runat="server" placeholder="Other Details"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:TextBox ID="TxtBrotherName2" runat="server" placeholder="Enter Brother's Name"></asp:TextBox>
                             </td>
                             <td>
                                 <asp:TextBox ID="TxtBrotherOther2" runat="server" placeholder="Other Details"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:TextBox ID="TxtBrotherName3" runat="server" placeholder="Enter Brother's Name"></asp:TextBox>
                             </td>
                             <td>
                                 <asp:TextBox ID="TxtBrotherOther3" runat="server" placeholder="Other Details"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:TextBox ID="TxtBrotherName4" runat="server" placeholder="Enter Brother's Name"></asp:TextBox>
                             </td>
                             <td>
                                 <asp:TextBox ID="TxtBrotherOther4" runat="server" placeholder="Other Details"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:TextBox ID="TxtBrotherName5" runat="server" placeholder="Enter Brother's Name"></asp:TextBox>
                             </td>
                             <td>
                                 <asp:TextBox ID="TxtBrotherOther5" runat="server" placeholder="Other Details"></asp:TextBox>
                             </td>
                         </tr>
                     </tbody>
                 </table>
                <br />

                     <!-- New Section for Loan Information -->

                     <!-- Loan Date -->
                     <div class="form-group">
                         <label for="TxtLoanDate">Last Loan Date:</label>
                         <asp:TextBox ID="TxtLoanDate" runat="server" placeholder="Enter Loan Date"></asp:TextBox>
                     </div>

                     <!-- Name -->
                     <div class="form-group">
                         <label for="TxtName">Nominee's Name:</label>
                         <asp:TextBox ID="TxtNomineName" runat="server" placeholder="Enter Name"></asp:TextBox>
                     </div>

                     <!-- Address -->
                     <div class="form-group">
                         <label for="TxtAddress">Nominee's Address:</label>
                         <asp:TextBox ID="TxtAddress" runat="server" placeholder="Enter Address"></asp:TextBox>
                     </div>

                     <!-- NIC -->
                     <div class="form-group">
                         <label for="TxtNIC">Nominee's NIC:</label>
                         <asp:TextBox ID="TxtNIC" runat="server" placeholder="Enter NIC"></asp:TextBox>
                     </div>
                    <!-- Submit Button -->
                    <div class="form-group">
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="BtnSubmit_Click" />
                    </div>
                   </div>
            </form>
</body>
</html>
