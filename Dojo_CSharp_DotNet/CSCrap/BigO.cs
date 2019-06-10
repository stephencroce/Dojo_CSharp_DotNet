using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestCSharpApp.CSCrap
{
    public class BigO
    {
        //test
        //http://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/

        #region O(1)
        //O(1) describes an algorithm that will always execute in the same time (or space) regardless of the size of the input data set.
        public bool IsFirstElementNull(String[] strings)
        {
            if (strings[0] == null)
            {
                return true;
            }

            return false;
        }
        #endregion

        #region O(n)
        //O(N) describes an algorithm whose performance will grow linearly and in direct proportion to the size of the input data set. 
        //The example below also demonstrates how Big O favours the worst-case performance scenario; a matching string could be found during any iteration of the for loop 
        //and the function would return early, but Big O notation will always assume the upper limit where the algorithm will perform the maximum number of iterations.
        public bool ContainsValue(String[] strings, String value)
        {
            for (int i = 0; i < strings.Length; i++)
            {
                if (strings[i] == value)
                {
                    return true;
                }
            }
            return false;
        }
        public int ValueAt(String[] strings, String value)
        {
            for (int i = 0; i < strings.Length; i++)
            {
                if (strings[i] == value)
                {
                    return i;
                }
            }
            return 99;
        }
        #endregion

        #region O(n2)
        //O(N2) represents an algorithm whose performance is directly proportional to the square of the size of the input data set. 
        //This is common with algorithms that involve nested iterations over the data set. Deeper nested iterations will result in O(N3), O(N4) etc.
        public bool ContainsDuplicates(String[] strings)
        {
            for (int i = 0; i < strings.Length; i++)
            {
                for (int j = 0; j < strings.Length; j++)
                {
                    if (i == j) // Don't compare with self
                    {
                        continue;
                    }

                    if (strings[i] == strings[j])
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        #endregion

    }
}