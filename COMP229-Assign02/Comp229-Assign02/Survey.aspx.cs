using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Comp229_Assign02
{
    public partial class About : Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            this.Context.Items["name"] = nameTextBox.Text;
            this.Context.Items["age"] = age.Text;
            this.Context.Items["gender"] = genderList.SelectedValue;
            this.Context.Items["product"] = productTextBox.Text;
            this.Context.Items["website"] = onlineWeb.SelectedValue;
            this.Context.Items["often"] = often.SelectedValue;
            this.Context.Items["payment"] = payment.SelectedValue;
            Server.Transfer("ThankYou.aspx", true);

        }

    }
       

    }
