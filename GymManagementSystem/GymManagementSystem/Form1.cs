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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Boolean b = true;
        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (b==true)
            {                                            //placing arrow images
                menuStrip1.Dock = DockStyle.Left;
                b = false;
                toolStripMenuItem1.Image = Image.FromFile(@"C:\Users\rabia\OneDrive\Masaüstü\right.png");

            }
            else
            {
                menuStrip1.Dock = DockStyle.Top;
                b = true;
                toolStripMenuItem1.Image = Image.FromFile(@"C:\Users\rabia\OneDrive\Masaüstü\arrow_down.png");

            }
        }

        private void newMemberToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmNewMember fr = new FrmNewMember();
            fr.ShowDialog();                                                         //switch between forms
        }

        private void newStaffToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmNewStaff fr = new FrmNewStaff();
            fr.ShowDialog();
        }

        private void equipmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmEquipment fr = new FrmEquipment();
            fr.ShowDialog();
        }

        private void searchMemberToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmSearchMember fr = new FrmSearchMember();
            fr.ShowDialog();
        }

        private void deleteMemberToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmDeleteMember fr = new FrmDeleteMember();
            fr.ShowDialog();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("This will close your application. Confir?","CLOSE",MessageBoxButtons.YesNo,MessageBoxIcon.Error)==DialogResult.Yes)
            {                                         //Closing the program
                Application.Exit();
            }
            else
            {
                MessageBox.Show("Welcome Back","Welcome",MessageBoxButtons.OK,MessageBoxIcon.Information);
            }
        }

        private void logOutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Log OUT!! Confir?","LOG OUT",MessageBoxButtons.OKCancel,MessageBoxIcon.Warning)==DialogResult.OK)
            {                             //Asks the user if they want to log out
                this.Close();
                FrmLogin fr = new FrmLogin();
                fr.Show();
                this.Hide();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
