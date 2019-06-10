using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestCSharpApp.ExtensionMethodFun
{
    //**Note, the class that stores extension methods needs to be static as well, since extension methods are by definition, static.
    public static class ExtentionMethods
    {
        //http://csharp.net-tutorials.com/csharp-3.0/extension-methods/
        //http://www.dotnetperls.com/extension


        //Extension methods are basically an altered-syntax form of instance methods in the C# programming language. 
        //They affect the high-level representation of the source text, not the low-level implementation.

        //Extension methods affect syntax, not execution.


        //Extension Methods allow you to extend an existing type with new functionality, without having to sub-class or recompile the old type.
        

        //is odd

        //is even

        //is integer

        //is numeric

        //You do it by defining a static class, with a set of static methods that will be your library of extension methods.



        //The only thing that separates this from any other static method, is the "this" keyword in the parameter section of the method. 
        //It tells the compiler that this is an extension method for the string class, and that's actually all you need to create an extension method. 
        //Now, you can call the IsNumeric() method directly on strings, as shown in ExtensionMethodCrap.cs Page_Load
        public static bool IsNumeric(this string s)
        {
            float output;
            return float.TryParse(s, out output);
        }
        public static int Speed(this Car someCar, int pickSpeed)
        {
            return pickSpeed;
        }

        public static string Stop(this Car someCar)
        {
            return "screeeech!";
        }

    }
}