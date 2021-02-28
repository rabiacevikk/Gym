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
    public partial class FrmNewMember : Form
    {
        public FrmNewMember()
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
                gender = radioButtonMale.Text;
            }
            else
            {
                gender = radioButtonFemale.Text;
            }
            string dob = dtofBirthday.Text;
            string mobile = mskTxtMobile.Text;
            string email = txtEmail.Text;
            string joindate = dateJoinDate.Text;                     //command to add new members
            string gymTime = CmbGymTime.Text;
            string address = txtAddress.Text;
            string membership = cmbMembershipTime.Text;

            SqlConnection con = new SqlConnection();
    con.ConnectionString= "Data Source=DESKTOP-387VI6I\\MSSQLSERVER01;Initial Catalog=gym;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText="insert into NewMember(Fname,Lname,Gender,Dob,Mobile,Email,JoinDate,Gymtime,Maddress,MembershipTime)values('"+fname+"','"+lname+"','"+gender+"','"+dob+"','"+mobile+"','"+email+"','"+joindate+"','"+gymTime+"','"+address+"','"+membership+"')";
            SqlDataAdapter DA = new SqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            MessageBox.Show("Data Saved");
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";              //cleaning item
            txtLastName.Clear();
            radioButtonFemale.Checked = false;
            radioButtonMale.Checked = false;
            mskTxtMobile.Clear();
            txtEmail.Clear();
            txtAddress.Clear();
            cmbMembershipTime.ResetText();
            CmbGymTime.ResetText();
            dtofBirthday.Value = DateTime.Now;
            dateJoinDate.Value = DateTime.Now;
        }

        
    }
}
