using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace GymManagementSystem
{
    public partial class FrmNewStaff : Form
    {
        public FrmNewStaff()
        {
            InitializeComponent();
        }

   
        private void btnSave_Click(object sender, EventArgs e)
        {
            string fname = txtFirstName.Text;
            string lname = txtLastName.Text;
            string gender = "";
            bool isChecked = radioButtonMale.Checked;
            if (isChecked)
            {
                gender = radioButtonMale.Text;  //to add new staff we use insert command
            }
            else
            {
                gender = radioButtonFemale.Text;
            }
            string dob = dtofBirthday.Text;
            string mobile = mskTxtMobile.Text;
            string email = txtEmail.Text;
            string joindate = dateJoinDate.Text;
            string country = txtCountry.Text;
            string city = txtCity.Text;
            SqlConnection con = new SqlConnection();
    con.ConnectionString= "Data Source=DESKTOP-387VI6I\\MSSQLSERVER01;Initial Catalog=gym;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into NewStaff (Fname,Lname,Gender,Dob,Mobile,Email,JoinDate,Country,City) values('" + fname + "','" + lname + "','" + gender + "','" + dob + "','" + mobile + "','" + email + "','" + joindate + "','" + country + "','" + city + "')";
            SqlDataAdapter DA = new SqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            MessageBox.Show("Data Saved");
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtCity.Clear();
            txtCountry.Clear();  //cleaning item
            txtEmail.Clear();
            txtFirstName.Clear();
            txtLastName.Clear();
            mskTxtMobile.Clear();
            dateJoinDate.Value = DateTime.Now;
            dtofBirthday.Value = DateTime.Now;
            radioButtonFemale.Checked = false;
            radioButtonMale.Checked = false;
        }
    }
}
