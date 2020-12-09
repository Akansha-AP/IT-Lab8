using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8Q1_2
{
    public partial class StaffDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void staffGrid_DataBound(object sender, EventArgs e)
        {
            

        }

        protected void staffGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.DataRow)
            {
                int age = (int)DataBinder.Eval(e.Row.DataItem, "Age");
                if(age>35)
                {
                    e.Row.BackColor = System.Drawing.Color.LimeGreen;
                    e.Row.ForeColor = System.Drawing.Color.Red;
                    e.Row.Font.Bold = true;
                }
            }    
        }

        protected void staffGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}