﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class StudentPage : Page
    {
        private SqlConnection thisConnection = new SqlConnection("Server=CHRIS;Initial Catalog=Comp229Assign03;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStInfo();
            }
        }
        private void GetStInfo()
        {
            // See how we can use a using statement rather than try-catch (this will close and dispose the connection similarly to a finally block

                string studentID = Session["currentStudentID"] as string;
                int.TryParse(studentID, out int sID);

            //SqlCommand sqlcom = new SqlCommand("select st.* from Students st where st.StudentID = '" + ssName + "'", thisConnection);
            SqlCommand comm = new SqlCommand("Select * from Students " +
                    "where Students.StudentID = @sID;", thisConnection);
                comm.Parameters.Add("@sID", System.Data.SqlDbType.Int);
                comm.Parameters["@sID"].Value = sID;
                try
                {
                    thisConnection.Open();
                    SqlDataReader reader = comm.ExecuteReader();

                    if (reader.Read())
                    {
                        //setName
                        stName.Text = reader["FirstMidName"] + " " + reader["LastName"];
                        //setID
                        stID.Text = reader["StudentID"] + "";
                        //setDate
                        stDate.Text = reader["EnrollmentDate"] + "";
                    }

                    reader.Close();
                    //setCourse
                    SqlCommand comm2 = new SqlCommand("SELECT * FROM dbo.Courses " +
                        "INNER JOIN dbo.Enrollments ON dbo.Courses.CourseID = dbo.Enrollments.CourseID " +
                        "WHERE dbo.Enrollments.StudentID = @sID;", thisConnection);
                    comm2.Parameters.Add("@sID", System.Data.SqlDbType.Int);
                    comm2.Parameters["@sID"].Value = sID;

                    reader = comm2.ExecuteReader();
                    CourseList.DataSource = reader;
                    CourseList.DataBind();

                    reader.Close();
                }
                catch
                {
                    Response.Write("Error retrieving user data");
                }
                finally
                {
                    thisConnection.Close();
                }
            }
        }
        protected void Change(object source, EventArgs e)
        {
            LinkButton btn = (LinkButton)(source);
            string value = btn.CommandName;
            bool IsDeleted = false;
            if (value == "Update")
            {
                Response.Redirect("Update.aspx");
            }
            else if (value == "Delete")
            {
                try
                {
                    using (connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Comp229Assign03"].ConnectionString))
                    {
                        SqlCommand comm = new SqlCommand();
                        comm.Connection = connection;
                        comm.CommandTimeout = 0;
                        comm.CommandType = System.Data.CommandType.StoredProcedure;
                        comm.CommandText = "DeleteStudent";

                        comm.Parameters.AddWithValue("@studentID", btn.CommandArgument);

                       connection.Open(); // open the cmd connection
                        comm.ExecuteNonQuery();
                        IsDeleted = true;
                    }
                }
                catch (Exception exp)
                {
                    errorMsg.Text = exp.Message;
                }
                finally
                {
                    thisConnection.Close();
                    if (IsDeleted)
                    {
                        errorMsg.Text = "Deleted";
                    }
                }

            }
        }

        protected void listCr_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "MoreDetail")
            {
                Session["courseID"] = e.CommandArgument.ToString();
                Response.Redirect("Course Enrollment.aspx");
            }
        }
    }
}