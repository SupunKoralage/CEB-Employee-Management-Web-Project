<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditView.aspx.cs" Inherits="CEBEmployeeManagment.EditView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Employee Details</title>
    <style>
    .form-group {
        display: flex;
        flex-direction: column; /* Stack label and textbox */
        margin-bottom: 15px;
    }

    .form-group label {
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input[type="text"],
    .form-group input[type="date"],
    asp:TextBox {
        width: 100%; /* Full-width textboxes for uniformity */
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box; /* Include padding in the width */
    }

    .column {
        width: 48%; /* Adjust columns for equal width */
    }

    .row {
        display: flex;
        justify-content: space-between; /* Space between two columns */
        gap: 20px;
    }

    .btn-submit,
    .btn-search {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .btn-search {
        font-size: 14px;
        margin-left: 10px;
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
        font-size: 25px;
    }

    .form-container {
        max-width: 1200px; /* Constrain the overall width for better design */
        margin: 20px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        border-radius: 10px;
    }

    .form-actions {
        display: flex;
        justify-content: flex-end;
        gap: 15px; /* Space between buttons */
    }
   .small-textbox {
    width: 200px; /* Set width for the text box */
    padding: 8px;
    font-size: 14px;
    border: 1px solid #FFF;
    border-radius: 5px;
    }

    .small-button {
        width: 100px; /* Set width for the button */
        padding: 8px;
        font-size: 14px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    label {
        font-weight: bold;
        margin-right: 10px;
    }
    .form-group-inline {
        display: flex;
        align-items: center; /* Align items vertically in the center */
        gap: 10px; /* Add space between label, textbox, and button */
        margin-bottom: 15px;
    }
    .data-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 15px; /* Adds vertical gap between rows */
    }

    .data-table th {
        text-align: left;
        padding: 10px;
        background-color: #f2f2f2;
        border-bottom: 2px solid #ccc;
    }

    .data-table td {
        padding: 10px;
        border-bottom: 1px solid #eee;
    }

    .data-table input[type="text"] {
        width: 95%; /* Adjust width to provide consistent spacing */
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .large-textbox {
        width: 100%; /* Full-width for large textboxes */
        padding: 12px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        margin-top: 5px; /* Adds space between the label and textbox */
    }

    .row-gap {
        margin-bottom: 20px; /* Adds spacing between rows */
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
    <form id="form1" runat="server">
        <div class="home-button">
            <asp:Button ID="BtnHome" runat="server" Text="Home" CssClass="btn-home" OnClick="BtnHome_Click" />
        </div>
            <div class="form-container">
     <div class="header-row">
         <h1>Southern Province - Welfare Society</h1>
         <h2>Edit/View Employee Information</h2>
         <br />
         <div class="form-group-inline">
             <label for="TxtEmpNum">Employee Number:</label>
             <asp:TextBox ID="TxtEmpNum" runat="server" placeholder="Enter Employee Number" CssClass="small-textbox" />
             <asp:Button ID="BtnSearch" runat="server" Text="Search" CssClass="btn-search small-button" OnClick="BtnSearch_Click" />
             <asp:Label ID="LblError" runat="server" ForeColor="Red" Text="" />
         </div>
     </div>


     <div class="row">
         <!-- Left Column -->
         <div class="column">
             <div class="form-group">
                 <label for="TxtFullNam">Full Name:</label>
                 <asp:TextBox ID="TxtFullNam" runat="server" />
             </div>
             <div class="form-group">
                 <label for="TxtDesignation">Designation:</label>
                 <asp:TextBox ID="TxtDesignation" runat="server"  />
             </div>
             <div class="form-group">
                 <label for="TxtEPFNum">EPF Number:</label>
                 <asp:TextBox ID="TxtEPFNum" runat="server" />
             </div>
             <div class="form-group">
                 <label for="TxtBranch">Branch:</label>
                 <asp:TextBox ID="TxtBranch" runat="server" />
             </div>
             <div class="form-group">
                 <label for="TxtAddress">Address:</label>
                 <asp:TextBox ID="TxtAddress" runat="server"/>
             </div>
             <div class="form-group">
                 <label for="TxtEmpDOB">Date of Birth:</label>
                 <asp:TextBox ID="TxtEmpDOB" runat="server"/>
             </div>
             <div class="form-group">
                 <label for="TxtKName">Spouse's Name:</label>
                 <asp:TextBox ID="TxtKName" runat="server"/>
             </div>
             
             <div class="form-group">
                 <label for="TxtLoanDate">Last Loan Date:</label>
                 <asp:TextBox ID="TxtLoanDate" runat="server"/>
             </div>
             <div class="form-group">
                 <label for="TxtName">Nominee's Name:</label>
                 <asp:TextBox ID="TxtName" runat="server"/>
             </div>
              <div class="form-group">
                  <label for="TxtNAddress">Nominee's Address:</label>
                  <asp:TextBox ID="TxtNAddress" runat="server"/>
              </div>
              <div class="form-group">
                  <label for="TxtNIC">Nominee's NIC:</label>
                  <asp:TextBox ID="TxtNIC" runat="server" />
              </div>

             <h3>Family Details</h3>
            <!-- <div class="form-group">
                 <label for="TxtFName">Father's Name and Other Detals:</label>
                   <asp:TextBox ID="TextBox1" runat="server" placeholder="Other Details" />
                 <asp:TextBox ID="TxtFOther" runat="server" placeholder="Other Details" />
             </div>
             <div class="form-group">
                 <label for="TxtMName">Mother's Name and Other Detals:</label>
                 <asp:TextBox ID="TxtMName" runat="server" placeholder="Enter Mother's Name" />
                 <asp:TextBox ID="TxtMOther" runat="server" placeholder="Other Details" />
             </div>-->
             <div class="form-group">
                 <label for="TxtFName">Father's Name and Other Detals:</label>
                 <asp:TextBox ID="TxtFatherName" runat="server"  width="200px"/><br /><br />
                 <asp:TextBox ID="TxtFatherOther" runat="server" placeholder="Other Details" width="300px"/>
             </div>
             <div class="form-group">
                 <label for="TxtMName">Mother's Name and Other Detals:</label>
                 <asp:TextBox ID="TxtMotherName" runat="server"  width="200px"/><br /><br />
                 <asp:TextBox ID="TxtMotherOther" runat="server" placeholder="Other Details" width="300px"/>
             </div>
             <div class="form-group">
                 <label for="TxtKFName">Spouse's Father's Name and Other Detals:</label>
                 <asp:TextBox ID="TxtKFatherName" runat="server" width="200px"/><br /><br />
                 <asp:TextBox ID="TxtKFOther" runat="server" placeholder="Other Details" width="300px"/>
             </div>
             <div class="form-group">
                 <label for="TxtKMName">Spouse's Mother's Name and Other Detals:</label>
                 <asp:TextBox ID="TxtKMName" runat="server"  width="200px"/><br /><br />
                 <asp:TextBox ID="TxtKMOther" runat="server" placeholder="Other Details" width="300px"/>
             </div>
         </div>

         <!-- Right Column -->
         <div class="">
             

             <h3>Child Details</h3>
             <table class="data-table">
                 <thead>
                     <tr>
                         <th>Child Name</th>
                         <th>Date of Birth</th>
                         <th>Other Details</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <td><asp:TextBox ID="TxtChild1Name" runat="server" placeholder="Child 1 Name" /></td>
                         <td><asp:TextBox ID="TxtChild1DOB" runat="server" placeholder="Child 1 DOB" /></td>
                         <td><asp:TextBox ID="TxtChildOther1" runat="server" placeholder="Other Info" CssClass="large-textbox"/></td>
                     </tr>
                     <tr>
                         <td><asp:TextBox ID="TxtChild2Name" runat="server" placeholder="Child 2 Name" /></td>
                         <td><asp:TextBox ID="TxtChild2DOB" runat="server" placeholder="Child 2 DOB" /></td>
                         <td><asp:TextBox ID="TxtChildOther2" runat="server" placeholder="Other Info" CssClass="large-textbox"/></td>
                     </tr>
                     <tr>
                         <td><asp:TextBox ID="TxtChild3Name" runat="server" placeholder="Child 3 Name" /></td>
                         <td><asp:TextBox ID="TxtChild3DOB" runat="server" placeholder="Child 3 DOB" /></td>
                         <td><asp:TextBox ID="TxtChildOther3" runat="server" placeholder="Other Info" CssClass="large-textbox"/></td>
                     </tr>
                     <tr>
                         <td><asp:TextBox ID="TxtChild4Name" runat="server" placeholder="Child 4 Name" /></td>
                         <td><asp:TextBox ID="TxtChild4DOB" runat="server" placeholder="Child 4 DOB" /></td>
                         <td><asp:TextBox ID="TxtChildOthe4" runat="server" placeholder="Other Info" CssClass="large-textbox"/></td>
                     </tr>
                     <tr>
                         <td><asp:TextBox ID="TxtChild5Name" runat="server" placeholder="Child 5 Name" /></td>
                         <td><asp:TextBox ID="TxtChild5DOB" runat="server" placeholder="Child 5 DOB" /></td>
                         <td><asp:TextBox ID="TxtChildOther5" runat="server" placeholder="Other Info" width="300px" CssClass="large-textbox"/></td>
                     </tr>
                     
                 </tbody>
             </table>
             <h3>Brothers Details</h3>
                 <table class="data-table">
                     <thead>
                         <tr>
                             <th>Brother's / Sister's Name</th>
                             <th>Other Details</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td><asp:TextBox ID="TxtbrotherName1" runat="server" placeholder="Brother 1 Name" width="200px"/></td>
                             <td><asp:TextBox ID="TxtBrotherOther1" runat="server" placeholder="Other Info" width="300px" CssClass="large-textbox"/></td>
                         </tr>
                         <tr>
                             <td><asp:TextBox ID="TxtbrotherName2" runat="server" placeholder="Brother 2 Name" width="200px"/></td>
                             <td><asp:TextBox ID="TxtBrotherOther2" runat="server" placeholder="Other Info" width="300px" CssClass="large-textbox"/></td>
                         </tr>
                         <tr>
                             <td><asp:TextBox ID="TxtbrotherName3" runat="server" placeholder="Brother 3 Name" width="200px"/></td>
                             <td><asp:TextBox ID="TxtBrotherOther3" runat="server" placeholder="Other Info" width="300px" CssClass="large-textbox"/></td>
                         </tr>
                         <tr>
                             <td><asp:TextBox ID="TxtbrotherName4" runat="server" placeholder="Brother 4 Name" width="200px"/></td>
                             <td><asp:TextBox ID="TxtBrotherOther4" runat="server" placeholder="Other Info" width="300px"/></td>
                         </tr>
                         <tr>
                             <td><asp:TextBox ID="TxtbrotherName5" runat="server" placeholder="Brother 5 Name" width="200px"/></td>
                             <td><asp:TextBox ID="TxtBrotherOther5" runat="server" placeholder="Other Info" width="300px"/></td>
                         </tr>
 
                     </tbody>
                 </table>
         </div>
     </div>

     <!-- Submit Button -->
     <div class="form-actions">
         
     
         <asp:Button ID="BtnAdd" runat="server" Text="Add New Record" CssClass="btn-submit" OnClick="BtnAdd_Click" />
         <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="btn-submit" OnClick="BtnClear_Click" />
   
         <asp:Button ID="BtnSubmit" runat="server" Text="Save Changes" CssClass="btn-submit" OnClick="BtnSubmit_Click" />
     </div>
 </div>
    </form>
</body>
</html>
