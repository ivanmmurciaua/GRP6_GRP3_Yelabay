﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using library;
using library.ServiceLayer;

namespace webYelabay
{
    public partial class Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* 
             * IsPostBack-->
             * Obtiene un valor que indica si la página se 
             * primera vez o se carga en respuesta a una devolución 
             * de datos
            */
            if (!IsPostBack)
            {
                if(Session["usuario"] == null)
                {
                    Response.Redirect("Login.aspx"); //Para que inicie sesion o se registre.
                }
                UsuarioEN u = (UsuarioEN)Session["usuario"];
                TextBoxName.Text = u.Nombre;
                TextBoxLastname.Text = u.Apellidos1;
                TextBoxPhone.Text = "" + u.Telefono;
                LabelEmail.Text = u.Email;
                LabelUsername.Text = u.Nick;
                LabelErrorName.Visible = false;
                LabelErrorLastname.Visible = false;
                LabelErrorPhone.Visible = false;
            }
        }

        protected void ButtonModify_Click(object sender, EventArgs e)
        {
            UsuarioEN u = (UsuarioEN)Session["usuario"];
            bool correcto = true;

            if (Validator.IsOnlyLetters(TextBoxName.Text))
            {
                LabelErrorName.Visible = false;
                u.Nombre = TextBoxName.Text;
            }
            else
            {
                LabelErrorName.Visible = true;
            }
            if (Validator.IsOnlyLetters(TextBoxLastname.Text))
            {
                LabelErrorLastname.Visible = false;
                u.Apellidos1 = TextBoxLastname.Text;
            }
            else
            {
                LabelErrorLastname.Visible = true;
                correcto = false;
            }
            if (!Validator.IsEmpty(TextBoxPhone.Text))
            {
                if (Validator.IsPhone(TextBoxPhone.Text))
                {
                    LabelErrorPhone.Visible = false;
                    u.Telefono = TextBoxPhone.Text;
                }
                else
                {
                    LabelErrorPhone.Visible = true;
                    correcto = false;
                }
            }
           // u.actualizarUsuario();
            Session["user"] = u;
        }
    }
}