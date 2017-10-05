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
    public partial class Contact : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = this.Context.Items["name"].ToString();
            lblAge.Text = this.Context.Items["age"].ToString();
            lblGender.Text = this.Context.Items["gender"].ToString();
            lblProduct.Text = this.Context.Items["product"].ToString();
            lblWeb.Text = this.Context.Items["website"].ToString();
            lblOften.Text = this.Context.Items["often"].ToString();
            lblPayment.Text = this.Context.Items["payment"].ToString();
           
        }
    }
}