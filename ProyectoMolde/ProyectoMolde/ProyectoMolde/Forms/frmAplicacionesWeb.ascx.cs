﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMolde.Forms
{
    public partial class frmAplicacionesWeb : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {         
        }

        public System.Web.UI.HtmlControls.HtmlGenericControl getlblIdAplicacionWeb()
        {
            return lblIdAplicacionWeb;
        }        
    }
}