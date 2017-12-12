using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace ServiciosMetodos
{
 
    public class Mail
    {
        private static bool ValidateEmail(string email)
        {
            try
            {
                MailAddress address = new MailAddress(email);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool EnviarEmail(string to, string subject, string body, string From = "")
        {
            bool rep = true;

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

            string[] correos = to.Split(';');

            foreach (string email in correos)
            {
                if (email != "" && ValidateEmail(email))
                {
                    msg.To.Add(email);
                }
            }

            if (From == "")
            {
                msg.From = new MailAddress("sipra@coosalud.com", "Molde", System.Text.Encoding.UTF8);
            }
            else
            {
                msg.From = new MailAddress(From + "@coosalud.com", From.ToUpper(), System.Text.Encoding.UTF8);
            }

            msg.Subject = subject;
            msg.SubjectEncoding = System.Text.Encoding.UTF8;
            msg.Body = body;
            msg.BodyEncoding = System.Text.Encoding.UTF8;
            msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();

            try
            {
                client.Send(msg);

            }
            catch (System.Net.Mail.SmtpException ex)
            {
                LogController lc = new LogController();
                lc.guardarLog("Modle", "Mail", "Send", (msg.To + "  " + ex.Message));
            }
            catch (Exception ex)
            {
                LogController lc = new LogController();
                lc.guardarLog("Molde", "Mail", "Send", (msg.To + "  " + ex.Message));
            }
            return rep;
        }


        public bool EnviarEmailConAdjunto(string to, string subject, string body, System.IO.MemoryStream stream, string From = "", string nombreAd = "")
        {
            bool rep = true;

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            stream.Seek(0, System.IO.SeekOrigin.Begin);

            string nombreAdjunto = nombreAd == "" ? "Respuesta Portabilidad.pdf" : nombreAd + ".pdf";
            Attachment item = new Attachment(stream, nombreAdjunto);

            string[] correos = to.Split(';');

            foreach (string email in correos)
            {
                if (email != "" && ValidateEmail(email))
                {
                    msg.To.Add(email);
                }
            }

            if (From == "")
            {
                msg.From = new MailAddress("sipra@coosalud.com", "SIPRA", System.Text.Encoding.UTF8);
            }
            else
            {
                msg.From = new MailAddress(From + "@coosalud.com", From.ToUpper(), System.Text.Encoding.UTF8);
            }

            msg.Subject = subject;
            msg.SubjectEncoding = System.Text.Encoding.UTF8;
            msg.Body = body;
            msg.BodyEncoding = System.Text.Encoding.UTF8;
            msg.IsBodyHtml = true;
            msg.Attachments.Add(item);

            SmtpClient client = new SmtpClient();

            try
            {
                client.Send(msg);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadLine();
            }

            return rep;
        }
    }

}