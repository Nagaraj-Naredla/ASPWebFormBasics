using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebBasics
{
    public partial class WebFormChkbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            string name = txtName.Text;
             string msg = "Welcome" + name + ",";
            /* if (chkADONET.Checked == true)
                 msg = msg +chkADONET.Text +",";
             if(chkCSharp.Checked == true)
                 msg = msg+chkCSharp.Text +",";
             if(chkLINQ.Checked == true)
                 msg = msg+chkLINQ.Text +",";
             if(chkMVC.Checked == true)
                 msg = msg+chkMVC.Text +",";
             if(chkSql.Checked == true)
                 msg= msg+chkSql.Text +",";
             if(chkUI.Checked == true)   
                 msg =msg+chkUI.Text +",";
             lblResult.Text = msg;*/


            // this forms1.Controls will heplfull, if further UI is changed then we will not change this C# code or asp.net code 
            foreach (var item in form1.Controls)
            {
                if (item is CheckBox) 
                {
                    CheckBox c = (CheckBox)item;
                    if (c.Checked)
                    {
                        msg = msg + c.Text + ",";
                    }
                }
            }
            lblResult.Text = msg;

        }
    }
}