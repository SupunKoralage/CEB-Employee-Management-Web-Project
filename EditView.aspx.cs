using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace CEBEmployeeManagment
{
    public partial class EditView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Connection = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ToString();
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ToString();

            // Check if the Employee Number is empty
            if (string.IsNullOrEmpty(TxtEmpNum.Text))
            {
                LblError.Text = "Please enter an Employee Number to search.";
                return;
            }

            string empNumber = TxtEmpNum.Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT 
                EmpFullName, Designation, EPFNumber, Branch, EmpAddress, DOB, KName, LoanDate, Name, Address, NIC, 
                FatherName, FatherOther, MotherName, MotherOther, KFatherName, KFatherOther, KMatherName, KMotherOther, 
                ChildName1, ChildDOB1, ChildOther1, ChildName2, ChildDOB2, ChildOther2, ChildName3, ChildDOB3, ChildOther3, 
                ChildName4, ChildDOB4, ChildOther4, ChildName5, ChildDOB5, ChildOther5, 
                BrotherName1, BrotherOther1, BrotherName2, BrotherOther2, BrotherName3, BrotherOther3, 
                BrotherName4, BrotherOther4, BrotherName5, BrotherOther5
            FROM EmployeeDetails
            WHERE EmpNumber = @EmpNumber";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@EmpNumber", empNumber);

                    try
                    {
                        conn.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            // Clear error message when valid data is retrieved
                            LblError.Text = "";

                            // Populate textboxes with data
                            TxtFullNam.Text = reader["EmpFullName"].ToString();
                            TxtDesignation.Text = reader["Designation"].ToString();
                            TxtEPFNum.Text = reader["EPFNumber"].ToString();
                            TxtBranch.Text = reader["Branch"].ToString();
                            TxtAddress.Text = reader["EmpAddress"].ToString();
                            TxtEmpDOB.Text = reader["DOB"].ToString();
                            TxtKName.Text = reader["KName"].ToString();
                            TxtLoanDate.Text = reader["LoanDate"].ToString();
                            TxtName.Text = reader["Name"].ToString();
                            TxtNAddress.Text = reader["Address"].ToString();
                            TxtNIC.Text = reader["NIC"].ToString();

                            TxtFatherName.Text = reader["FatherName"].ToString();
                            TxtFatherOther.Text = reader["FatherOther"].ToString();
                            TxtMotherName.Text = reader["MotherName"].ToString();
                            TxtMotherOther.Text = reader["MotherOther"].ToString();
                            TxtKFatherName.Text = reader["KFatherName"].ToString();
                            TxtKFOther.Text = reader["KFatherOther"].ToString();
                            TxtKMName.Text = reader["KMatherName"].ToString();
                            TxtKMOther.Text = reader["KMotherOther"].ToString();

                            TxtChild1Name.Text = reader["ChildName1"].ToString();
                            TxtChild1DOB.Text = reader["ChildDOB1"].ToString();
                            TxtChildOther1.Text = reader["ChildOther1"].ToString();
                            TxtChild2Name.Text = reader["ChildName2"].ToString();
                            TxtChild2DOB.Text = reader["ChildDOB2"].ToString();
                            TxtChildOther2.Text = reader["ChildOther2"].ToString();
                            TxtChild3Name.Text = reader["ChildName3"].ToString();
                            TxtChild3DOB.Text = reader["ChildDOB3"].ToString();
                            TxtChildOther3.Text = reader["ChildOther3"].ToString();
                            TxtChild4Name.Text = reader["ChildName4"].ToString();
                            TxtChild4DOB.Text = reader["ChildDOB4"].ToString();
                            TxtChildOthe4.Text = reader["ChildOther4"].ToString();
                            TxtChild5Name.Text = reader["ChildName5"].ToString();
                            TxtChild5DOB.Text = reader["ChildDOB5"].ToString();
                            TxtChildOther5.Text = reader["ChildOther5"].ToString();

                            TxtbrotherName1.Text = reader["BrotherName1"].ToString();
                            TxtBrotherOther1.Text = reader["BrotherOther1"].ToString();
                            TxtbrotherName2.Text = reader["BrotherName2"].ToString();
                            TxtBrotherOther2.Text = reader["BrotherOther2"].ToString();
                            TxtbrotherName3.Text = reader["BrotherName3"].ToString();
                            TxtBrotherOther3.Text = reader["BrotherOther3"].ToString();
                            TxtbrotherName4.Text = reader["BrotherName4"].ToString();
                            TxtBrotherOther4.Text = reader["BrotherOther4"].ToString();
                            TxtbrotherName5.Text = reader["BrotherName5"].ToString();
                            TxtBrotherOther5.Text = reader["BrotherOther5"].ToString();
                        }
                        else
                        {
                            LblError.Text = "No record found for the provided Employee Number.";
                        }
                    }
                    catch (Exception ex)
                    {
                        LblError.Text = "Error: " + ex.Message;
                    }
                }
            }
        }


        protected void BtnClear_Click(object sender, EventArgs e)
        {
            // Clear the Employee Number field
            TxtEmpNum.Text = "";

            // Clear other text fields
            TxtFullNam.Text = "";
            TxtDesignation.Text = "";
            TxtEPFNum.Text = "";
            TxtBranch.Text = "";
            TxtAddress.Text = "";
            TxtEmpDOB.Text = "";
            TxtKName.Text = "";
            TxtLoanDate.Text = "";
            TxtName.Text = "";
            TxtNAddress.Text = "";
            TxtNIC.Text = "";

            TxtFatherName.Text = "";
            TxtFatherOther.Text = "";
            TxtMotherName.Text = "";
            TxtMotherOther.Text = "";
            TxtKFatherName.Text = "";
            TxtKFOther.Text = "";
            TxtKMName.Text = "";
            TxtKMOther.Text = "";

            TxtChild1Name.Text = "";
            TxtChild1DOB.Text = "";
            TxtChildOther1.Text = "";
            TxtChild2Name.Text = "";
            TxtChild2DOB.Text = "";
            TxtChildOther2.Text = "";
            TxtChild3Name.Text = "";
            TxtChild3DOB.Text = "";
            TxtChildOther3.Text = "";
            TxtChild4Name.Text = "";
            TxtChild4DOB.Text = "";
            TxtChildOthe4.Text = "";
            TxtChild5Name.Text = "";
            TxtChild5DOB.Text = "";
            TxtChildOther5.Text = "";

            TxtbrotherName1.Text = "";
            TxtBrotherOther1.Text = "";
            TxtbrotherName2.Text = "";
            TxtBrotherOther2.Text = "";
            TxtbrotherName3.Text = "";
            TxtBrotherOther3.Text = "";
            TxtbrotherName4.Text = "";
            TxtBrotherOther4.Text = "";
            TxtbrotherName5.Text = "";
            TxtBrotherOther5.Text = "";

            // Clear the error label
            LblError.Text = "";
        }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ToString();

            if (string.IsNullOrEmpty(TxtEmpNum.Text))
            {
                LblError.Text = "Employee Number is required.";
                return;
            }

            string empNumber = TxtEmpNum.Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"
        UPDATE EmployeeDetails
        SET 
            EmpFullName = @EmpFullName,
            Designation = @Designation,
            EPFNumber = @EPFNumber,
            Branch = @Branch,
            EmpAddress = @EmpAddress,
            DOB = @DOB,
            KName = @KName,
            LoanDate = @LoanDate,
            Name = @Name,
            Address = @Address,
            NIC = @NIC,
            FatherName = @FatherName,
            FatherOther = @FatherOther,
            MotherName = @MotherName,
            MotherOther = @MotherOther,
            KFatherName = @KFatherName,
            KFatherOther = @KFatherOther,
            KMatherName = @KMatherName,
            KMotherOther = @KMotherOther,
            ChildName1 = @ChildName1,
            ChildDOB1 = @ChildDOB1,
            ChildOther1 = @ChildOther1,
            ChildName2 = @ChildName2,
            ChildDOB2 = @ChildDOB2,
            ChildOther2 = @ChildOther2,
            ChildName3 = @ChildName3,
            ChildDOB3 = @ChildDOB3,
            ChildOther3 = @ChildOther3,
            ChildName4 = @ChildName4,
            ChildDOB4 = @ChildDOB4,
            ChildOther4 = @ChildOther4,
            ChildName5 = @ChildName5,
            ChildDOB5 = @ChildDOB5,
            ChildOther5 = @ChildOther5,
            BrotherName1 = @BrotherName1,
            BrotherOther1 = @BrotherOther1,
            BrotherName2 = @BrotherName2,
            BrotherOther2 = @BrotherOther2,
            BrotherName3 = @BrotherName3,
            BrotherOther3 = @BrotherOther3,
            BrotherName4 = @BrotherName4,
            BrotherOther4 = @BrotherOther4,
            BrotherName5 = @BrotherName5,
            BrotherOther5 = @BrotherOther5
        WHERE EmpNumber = @EmpNumber";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters for all fields
                    cmd.Parameters.AddWithValue("@EmpNumber", empNumber); // This is the primary key and won't change
                    cmd.Parameters.AddWithValue("@EmpFullName", TxtFullNam.Text);
                    cmd.Parameters.AddWithValue("@Designation", TxtDesignation.Text);
                    cmd.Parameters.AddWithValue("@EPFNumber", TxtEPFNum.Text);
                    cmd.Parameters.AddWithValue("@Branch", TxtBranch.Text);
                    cmd.Parameters.AddWithValue("@EmpAddress", TxtAddress.Text);
                    cmd.Parameters.AddWithValue("@DOB", TxtEmpDOB.Text);
                    cmd.Parameters.AddWithValue("@KName", TxtKName.Text);
                    cmd.Parameters.AddWithValue("@LoanDate", TxtLoanDate.Text);
                    cmd.Parameters.AddWithValue("@Name", TxtName.Text);
                    cmd.Parameters.AddWithValue("@Address", TxtNAddress.Text);
                    cmd.Parameters.AddWithValue("@NIC", TxtNIC.Text);

                    cmd.Parameters.AddWithValue("@FatherName", TxtFatherName.Text);
                    cmd.Parameters.AddWithValue("@FatherOther", TxtFatherOther.Text);
                    cmd.Parameters.AddWithValue("@MotherName", TxtMotherName.Text);
                    cmd.Parameters.AddWithValue("@MotherOther", TxtMotherOther.Text);
                    cmd.Parameters.AddWithValue("@KFatherName", TxtKFatherName.Text);
                    cmd.Parameters.AddWithValue("@KFatherOther", TxtKFOther.Text);
                    cmd.Parameters.AddWithValue("@KMatherName", TxtKMName.Text);
                    cmd.Parameters.AddWithValue("@KMotherOther", TxtKMOther.Text);

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
                    cmd.Parameters.AddWithValue("@ChildOther4", TxtChildOthe4.Text);
                    cmd.Parameters.AddWithValue("@ChildName5", TxtChild5Name.Text);
                    cmd.Parameters.AddWithValue("@ChildDOB5", TxtChild5DOB.Text);
                    cmd.Parameters.AddWithValue("@ChildOther5", TxtChildOther5.Text);

                    cmd.Parameters.AddWithValue("@BrotherName1", TxtbrotherName1.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther1", TxtBrotherOther1.Text);
                    cmd.Parameters.AddWithValue("@BrotherName2", TxtbrotherName2.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther2", TxtBrotherOther2.Text);
                    cmd.Parameters.AddWithValue("@BrotherName3", TxtbrotherName3.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther3", TxtBrotherOther3.Text);
                    cmd.Parameters.AddWithValue("@BrotherName4", TxtbrotherName4.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther4", TxtBrotherOther4.Text);
                    cmd.Parameters.AddWithValue("@BrotherName5", TxtbrotherName5.Text);
                    cmd.Parameters.AddWithValue("@BrotherOther5", TxtBrotherOther5.Text);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            LblError.Text = "Employee details updated successfully!";
                            LblError.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            LblError.Text = "No record found for the provided Employee Number.";
                            LblError.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        LblError.Text = "Error: " + ex.Message;
                        LblError.ForeColor = System.Drawing.Color.Red;
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