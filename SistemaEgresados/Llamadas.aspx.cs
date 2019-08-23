using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firebase.Database;
using Firebase.Database.Query;
using System.Threading.Tasks;
namespace SistemaEgresados
{
    public partial class Llamadas : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void connect(object sender, EventArgs e)
        {
            Console.Out.WriteLine("AQUIIIIIIIIIIIIIIIII");
            //Simulate test user data and login timestamp
            

            //Save non identifying data to Firebase
            var firebaseClient = new FirebaseClient("https://plataformagraduados-2cad6.firebaseio.com/");
            var result = firebaseClient.Child("Users/" + "Dereck");


            //Retrieve data from Firebase
            var dbLogins = firebaseClient.Child("Users");

            Console.Out.WriteLine(result.ToString());
            Console.Out.WriteLine(dbLogins.ToString());




        }


    }
}