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
    public partial class FrmEquipment : Form
    {
        public FrmEquipment()
        {
            InitializeComponent();
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            string EquipName = txtEquipmentName.Text;
            string Description = txtDescription.Text;
            string MUsed = txtMusclesUsed.Text;                    //command to add equipment
            string DDate = dateTimeDeliveryDate.Text;
            string cost = txtCost.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-387VI6I\\MSSQLSERVER01;Initial Catalog=gym;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Equipment(EquipName,EDescription,MUsed,DDate,Cost)values('" + EquipName + "','" + Description + "','" + MUsed + "','" + DDate + "','" + cost + "')";
            SqlDataAdapter DA = new SqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            MessageBox.Show("Data Saved!", "Inserted", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

    

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtEquipmentName.Clear();
            txtDescription.Clear();
            txtMusclesUsed.Clear();                           //cleaning items
            dateTimeDeliveryDate.Value = DateTime.Now;
            txtCost.Clear();
        }

        private void btnViewEquipment_Click(object sender, EventArgs e)
        {
            FrmViewEquipment fr = new FrmViewEquipment();
            fr.ShowDialog();              //transition between forms
        }
    }
}
