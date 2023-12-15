using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime
        {
            get
            {
                return txtIme.Text;
            }
        }

        public string mejl
        {
            get
            {
                return txtEmail.Text;
            }
        }

        public string godina
        {
            get
            {
                return txtGodinaRodjenja.Text;
            }
        }

        public string razred
        {
            get
            {
                return rblRazred.Text;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnPrijava_Click(object sender, EventArgs e)
        {
            if (txtImeValidator.IsValid &&
                txtEmailValidator.IsValid &&
                rblRazredValidator.IsValid &&
                txtPotvrdaValidator.IsValid &&
                txtGodinaRodjenjaValidator.IsValid &&
                txtUporediValidator.IsValid &&
                txtGodineValidator.IsValid &&
                txtEmailFormat.IsValid)
            {
                btnPrijava.PostBackUrl = "~/izvestaj.aspx";
                lblIzvestaj.Text = String.Empty;
            }
            else
                lblIzvestaj.Text = "Niste uneli sve podatke";

        }
    }
}