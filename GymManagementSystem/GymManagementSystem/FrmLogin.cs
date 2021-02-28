using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GymManagementSystem
{
    public partial class FrmLogin : Form
    {
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text=="admin"&&txtPassword.Text=="123")
            {
                Form1 fr = new Form1();
                fr.Show();                  //if the username and password are correct, the other form opens
                this.Hide();
            }
            else
            {                                   //gives a message if it is wrong
                MessageBox.Show("Incorrect userId or Password", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
