using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestCSharpApp.ExtensionMethodFun
{
    //The purpose of this class is to illustrate Extension Methods.
    public class Car
    {
        private String _color;

        public Car()
        {
            //constructor
            this._color = "blue";
        }
        public string Start()
        {
            return "Vroom! - You have a snazzy new " + _color + " car!<br>";
        }
    }
}