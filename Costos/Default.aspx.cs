using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Costos
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Convert.ToInt16(Session["con"]) > 0)
                {
                    txtprocesos.Visible = false;
                    txtunidadesiniciales.Visible = false;
                    lblprocesos.Visible = false;
                    lblunidadesE.Visible = false;
                    lblmateriaprima.Visible = false;
                    txtmateriaprima.Visible = false;
                    Label1.Text =(Convert.ToInt32(Session["con"])+1).ToString();
                }
                else
                {
                    Label1.Visible = false;
                     label2.Visible = false;
                    txtprocesos.Visible = true;
                    txtunidadesiniciales.Visible = true;
                    lblprocesos.Visible = true;
                    lblunidadesE.Visible = true;
                    lblmateriaprima.Visible = true;
                    txtmateriaprima.Visible = true;
                }

            }

        }

        protected void txtunidadestransferidas_TextChanged(object sender, EventArgs e)
        {
            
        }


        protected void Calcula_proceso() {

            double transferidas, procesos, retenidas, pmprima, pmobra, pcifabricacion;

         
            transferidas = Convert.ToDouble(txtunidadestransferidas.Text);
            procesos = Convert.ToDouble(txtunidadesproceso.Text);
            retenidas = Convert.ToDouble(txtretenidas.Text);

            lblmtT.Text = txtunidadestransferidas.Text;
            lblobraTT.Text = txtunidadestransferidas.Text;
            lblcifTT.Text = txtunidadestransferidas.Text;

            pmprima = Convert.ToDouble(txtpmprima.Text);
            pmobra = Convert.ToDouble(txtpmanoobra.Text);
            pcifabricacion = Convert.ToDouble(txtpcif.Text);

            lblmProceso.Text =Convert.ToString(procesos * (pmprima / 100));
            lblobraProceso.Text = Convert.ToString(procesos * (pmobra / 100));
            lblcifProceso.Text = Convert.ToString(procesos * (pcifabricacion / 100));

            lblmtR.Text = txtretenidas.Text;
            lblobraTR.Text = txtretenidas.Text;
            lblcifTR.Text = txtretenidas.Text;

            lblTmateriales.Text = Convert.ToString(Convert.ToDouble(lblmtT.Text) + Convert.ToDouble(lblmtR.Text) + Convert.ToDouble(lblmProceso.Text));
            lblTmanoobra.Text = Convert.ToString(Convert.ToDouble(lblobraTT.Text) + Convert.ToDouble(lblobraTR.Text) + Convert.ToDouble(lblobraProceso.Text));
            lblTcif.Text = Convert.ToString(Convert.ToDouble(lblcifTT.Text) + Convert.ToDouble(lblcifTR.Text) + Convert.ToDouble(lblcifProceso.Text));

            if (Convert.ToInt16(Session["con"]) > 0)
            {
                lblCtMp.Text = Convert.ToString(Convert.ToDouble(Session["costoUnitario"]) * Convert.ToDouble(lblTmateriales.Text));

            }
            else
            {
                Session["procesos"] = txtprocesos.Text;
                lblCtMp.Text = txtmateriaprima.Text;
            }

            lblCtMo.Text = txtmanoobra.Text;
            lblCtCi.Text = txtcostosindirectos.Text;

              if (Convert.ToInt16(Session["con"]) > 0)
            {
                lblCUMp.Text = Convert.ToString(Session["costoUnitario"]);
            }
              else
              {
                  lblCUMp.Text = Convert.ToString(Convert.ToDouble(txtmateriaprima.Text) / Convert.ToDouble(lblTmateriales.Text));
              }
            lblCUMo.Text = Convert.ToString(Convert.ToDouble(txtmanoobra.Text) / Convert.ToDouble(lblTmanoobra.Text));
            lblCUIc.Text = Convert.ToString(Convert.ToDouble(txtcostosindirectos.Text) / Convert.ToDouble(lblTcif.Text));

            lblTctotal.Text = Convert.ToString(Convert.ToDouble(txtmateriaprima.Text) + Convert.ToDouble(txtmanoobra.Text) + Convert.ToDouble(txtcostosindirectos.Text));
            lblTcunitario.Text = Convert.ToString(Convert.ToDouble(lblCUMp.Text) + Convert.ToDouble(lblCUMo.Text) + Convert.ToDouble(lblCUIc.Text));
            Session["costoUnitario"] = lblTcunitario.Text;

            lblPmpcantidad.Text = Convert.ToString(Convert.ToDouble(lblmProceso.Text) * Convert.ToDouble(lblCUMp.Text));
            lblPmobracantidad.Text = Convert.ToString(Convert.ToDouble(lblobraProceso.Text) * Convert.ToDouble(lblCUMo.Text));
            lblPcantidd.Text = Convert.ToString(Convert.ToDouble(lblcifProceso.Text) * Convert.ToDouble(lblCUIc.Text));

            lblTproceso.Text = Convert.ToString(Convert.ToDouble(lblPmpcantidad.Text) + Convert.ToDouble(lblPmobracantidad.Text) + Convert.ToDouble(lblPcantidd.Text));
            lblRmpcantidad.Text = Convert.ToString(Convert.ToDouble(lblmtR.Text) * Convert.ToDouble(lblCUMp.Text));
            lblRmobracantidad.Text = Convert.ToString(Convert.ToDouble(lblobraTR.Text) * Convert.ToDouble(lblCUMo.Text));
            lblRcantidd.Text = Convert.ToString(Convert.ToDouble(lblcifTR.Text) * Convert.ToDouble(lblCUIc.Text));

            lblTretenido.Text = Convert.ToString(Convert.ToDouble(lblRmpcantidad.Text) + Convert.ToDouble(lblRmobracantidad.Text) + Convert.ToDouble(lblRcantidd.Text));
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["con"] = Convert.ToString(Convert.ToInt32(Session["con"]) + 1);
            

            if (Convert.ToString(Session["con"]) ==Convert.ToString( Session["procesos"]))
            {
              
                Session.Remove("con");
                Session.Remove("procesos"); 
                Response.Redirect("About.aspx");
               

            }

            Response.Redirect("Default.aspx");
        }

        protected void txtpcif_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btncalcular_Click(object sender, EventArgs e)
        {
            Calcula_proceso();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double ph = Convert.ToDouble(precioxhora.Text);
            double cm = Convert.ToDouble(cminutos.Text);
            double t = (ph * cm) / 60;
            txtmanoobra.Text = t.ToString();


        }




    }
}
