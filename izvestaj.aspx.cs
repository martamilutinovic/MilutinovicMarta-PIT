using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                lblIzvestaj.Text = PreviousPage.ime + " (" + PreviousPage.mejl + "), rodjen " + PreviousPage.godina + " godine, ucenik " + PreviousPage.razred + " razreda, uspesno je popunio obrazac za prijavu";
        }
    }
}