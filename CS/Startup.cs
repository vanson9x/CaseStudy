using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CS.Startup))]
namespace CS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
