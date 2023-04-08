using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(pagina2.Startup))]
namespace pagina2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
