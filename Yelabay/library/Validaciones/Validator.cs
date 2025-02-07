﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;


namespace library.ServiceLayer
{
    public static class Validator
    {
        public static bool IsEmail(string email)
        {
            return Regex.IsMatch(email, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        }

        public static bool IsOnlyLetters(string letter)
        {
            return Regex.IsMatch(letter, @"^[a-zA-ZñÑ\s]+$");
        }

        public static bool IsSecurePass(string passw)
        {
            return Regex.IsMatch(passw, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$");
        }

        public static bool IsEmpty(string s)
        {
            return Regex.IsMatch(s, @"^+$");
        }

        public static bool noExiste(string field, string s)
        {
            UsuarioCAD cad = new UsuarioCAD();
            if (cad.readBy(field, s) == null)
            {
                return true;
            }
            return false;
        }


        public static bool IsPhone(string phone)
        {
            return Regex.Match(phone, "^34 ?(?:6[0-9]{2}|7[1-9][0-9])(?: ?[0-9]{3}){2}$").Success;
        }
    }
}
