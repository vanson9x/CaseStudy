using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace CS
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application.Add("userNow", 0);

            if(!File.Exists(Server.MapPath(@"~/App_Data/count-user.txt")))
            {
                using(StreamWriter w = new StreamWriter(Server.MapPath(@"~/App_Data/count-user.txt"), true))
                {
                    w.WriteLine(1);
                    w.Close();
                }
            }

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Session_OnStart()
        {
            StreamReader r = new StreamReader(Server.MapPath(@"~/App_Data/count-user.txt"), true);
            int user_old = Convert.ToInt32(r.ReadLine());
            r.Close();

            File.WriteAllText(Server.MapPath(@"~/App_Data/count-user.txt"), "");

            StreamWriter w = new StreamWriter(Server.MapPath(@"~/App_Data/count-user.txt"), true);
            w.WriteLine(user_old + 1);
            w.Close();

            Application.Set("userVisited", user_old + 1);
            Application.Set("userNow", Convert.ToInt32(Application.Get("userNow")) + 1);
        }

        void Session_OnEnd()
        {
            Application.Set("userNow", Convert.ToInt32(Application.Get("userNow")) - 1);
        }

        void Application_End(object sender, EventArgs e)
        {

        }
    }
}