using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CEBEmployeeManagment
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Connection = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ToString();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ToString();

            if (string.IsNullOrEmpty(TxtEmpNum.Text))
            {
                LblError.Text = "Employee Number is required.";
                return;
            }
            LblError.Text = "";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
                INSERT INTO EmployeeDetails 
                (EmpNumber, EmpFullName, Designation, EPFNumber, Branch, EmpAddress, DOB, KName, 
                ChildName1, ChildDOB1, ChildOther1, ChildName2, ChildDOB2, ChildOther2, ChildName3, 
                ChildDOB3, ChildOther3, ChildName4, ChildDOB4, ChildOther4, ChildName5, ChildDOB5, 
                ChildOther5, FatherName, FatherOther, MotherName, MotherOther, KFatherName, KFatherOther, 
                KMatherName, KMotherOther, BrotherName1, BrotherOther1, BrotherName2, BrotherOther2, 
                BrotherName3, BrotherOther3, BrotherName4, BrotherOther4, BrotherName5, BrotherOther5, 
                LoanDate, Name, Address, NIC) 
                VALUES 
                (@EmpNumber, @EmpFullName, @Designation, @EPFNumber, @Branch, @EmpAddress, @DOB, @KName, 
                @ChildName1, @ChildDOB1, @ChildOther1, @ChildName2, @ChildDOB2, @ChildOther2, @ChildName3, 
                @ChildDOB3, @ChildOther3, @ChildName4, @ChildDOB4, @ChildOther4, @ChildName5, @ChildDOB5, 
                @ChildOther5, @FatherName, @FatherOther, @MotherName, @MotherOther, @KFatherName, @KFatherOther, 
                @KMatherName, @KMotherOther, @BrotherName1, @BrotherOther1, @BrotherName2, @BrotherOther2, 
                @BrotherName3, @BrotherOther3, @BrotherName4, @BrotherOther4, @BrotherName5, @BrotherOther5, 
                @LoanDate, @Name, @Address, @NIC)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters
                    cmd.Parameters.AddWithValue("@EmpNumber", TxtEmpNum.Text);
                    cmd.Parameters.AddWithValue("@EmpFullName", TxtName.Text);
                    cmd.Parameters.AddWithValue("@Designation", TxtDesigantion.Text);
                    cmd.Parameters.AddWithValue("@EPFNumber", TxtEPFNum.Text);
                    cmd.Parameters.AddWithValue("@Branch", TxtBranch.Text);
                    cmd.Parameters.AddWithValue("@EmpAddress", textPAddress.Text);
                    cmd.Parameters.AddWithValue("@DOB", TxtEmpDOB.Text);
                    cmd.Parameters.AddWithValue("@KName", TxtKName.Text);
                    cmd.Parameters.AddWithValue("@ChildName1", TxtChild1Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB1", TxtChild1DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther1", TxtChildOther1.Text);
                    cmd.Parameters.AddWithValue("@ChildName2", TxtChild2Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB2", TxtChild2DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther2", TxtChildOther2.Text);
                    cmd.Parameters.AddWithValue("@ChildName3", TxtChild3Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB3", TxtChild3DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther3", TxtChildOther3.Text);
                    cmd.Parameters.AddWithValue("@ChildName4", TxtChild4Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB4", TxtChild4DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther4", TxtChildOther4.Text);
                    cmd.Parameters.AddWithValue("@ChildName5", TxtChild5Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB5", TxtChild5DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther5", TxtChildOther5.Text);

                    cmd.Parameters.AddWithValue("@FatherName", TxtFName.Text);
                    cmd.Parameters.AddWithValue("@FatherOther", TxtFOther.Text);
                    cmd.Parameters.AddWithValue("@MotherName", TxtMName.Text);
                    cmd.Parameters.AddWithValue("@MotherOther", TxtMOther.Text);
                    cmd.Parameters.AddWithValue("@KFatherName", TxtKFName.Text);
                    cmd.Parameters.AddWithValue("@KFatherOther", TxtKFOther.Text);
                    cmd.Parameters.AddWithValue("@KMatherName", TxtKMName.Text);
                    cmd.Parameters.AddWithValue("@KMotherOther", TxtKMOther.Text);

                    cmd.Parameters.AddWithValue("@BrotherName1", TxtBrotherName1.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther1", TxtBrotherOther1.Text);
                    cmd.Parameters.AddWithValue("@BrotherName2", TxtBrotherName2.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther2", TxtBrotherOther2.Text);
                    cmd.Parameters.AddWithValue("@BrotherName3", TxtBrotherName3.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther3", TxtBrotherOther3.Text);
                    cmd.Parameters.AddWithValue("@BrotherName4", TxtBrotherName4.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther4", TxtBrotherOther4.Text);
                    cmd.Parameters.AddWithValue("@BrotherName5", TxtBrotherName5.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther5", TxtBrotherOther5.Text);
                    // Add more parameters for other textboxes
                    cmd.Parameters.AddWithValue("@LoanDate", TxtLoanDate.Text);
                    cmd.Parameters.AddWithValue("@Name", TxtNomineName.Text);
                    cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
                    cmd.Parameters.AddWithValue("@NIC", TxtNIC.Text);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        string script = @"
                    alert('Data Inserted Successfully!');
                    document.getElementById('" + TxtEmpNum.ClientID + @"').value = '';";
                        ClientScript.RegisterStartupScript(this.GetType(), "PopupMessage", script, true);
                    }
                    catch (Exception ex)
                    {
                        LblError.Text = "Error: " + ex.Message;
                    }
                }
            }

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}