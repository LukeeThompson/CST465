using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab2.Code
{
    public class UserProfile
    {
        
        public string _fname;
        public string _lname;
        public string _age;
        public string _phone;
        public string _email;
        public string _address;
        public string _city;
        public string _state;
        public string _zip;
        public byte[] _img;

        public UserProfile(string fname, string lname, string age, string phone, string email, string address, string city, string state, string zip, byte[] buffer)
        {
            _fname = fname;
            _lname = lname;
            _age = age;
            _phone = phone;
            _email = email;
            _address = address;
            _city = city;
            _state = state;
            _zip = zip;
            _img = buffer;
        }
    }

   

}