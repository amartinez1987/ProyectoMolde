using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace ProyectoMolde.Forms
{
    public partial class frmCargueAnexos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = "2";// Request.QueryString[""];
        }

        private void Submit1_ServerClick(object sender, System.EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string valueTipoAnexo = cmbTipoAnexo.SelectedValue;
                string val = HiddenField1.Value;
                try
                {
                    byte[] fileData = null;
                    using (var binaryReader = new BinaryReader(File1.PostedFile.InputStream))
                    {
                        fileData = binaryReader.ReadBytes(File1.PostedFile.ContentLength);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns detailed message that describes the current exception. 
                    //For security reasons, we do not recommend you return Exception.Message to end users in 
                    //production environments. It would be better just to put a generic error message. 
                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }
        }
    }
}