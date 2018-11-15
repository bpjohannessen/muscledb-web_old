using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.IO;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Data.Sqlite;
using DbReader;

namespace MuscleWeb
{
    public class Startup
    {
        public Startup(IHostingEnvironment env)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true)
                .AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public IConfigurationRoot Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddScoped<IDbConnection>((f) => CreateConnection());
            
            // Add framework services.
            services.AddMvc();
        }

        private IDbConnection CreateConnection()
        {
            var baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
            var pathtoDatabase = Path.Combine(baseDirectory, "muscles.db");
            SqliteConnection connection = new SqliteConnection($"data source = {pathtoDatabase}");
            DbReaderOptions.WhenReading<long?>().Use((rd, i)=> rd.GetInt32(i));
            DbReaderOptions.WhenReading<long>().Use((rd, i)=> rd.GetInt32(i));
            DbReaderOptions.WhenReading<string>().Use((rd, i)=> (string)rd.GetValue(i));
            connection.Open();
            return connection;
        }


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(Configuration.GetSection("Logging"));

            // Adding static files
            app.UseDefaultFiles();
            app.UseStaticFiles();

            loggerFactory.AddDebug();
            app.UseMvc();
        }
    }
}
