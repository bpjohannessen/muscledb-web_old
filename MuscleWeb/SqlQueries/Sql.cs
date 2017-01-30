using System.Collections.Concurrent;
using System.IO;
using System.Reflection;
using System.Text;

/// <summary>
/// A class that loads embedded sql queries 
/// </summary>
public static class Sql
{
    private static ConcurrentDictionary<string,string> cache = new ConcurrentDictionary<string, string>();
    
    /// <summary>
    /// Gets the sql associated with the given <paramref name="name".
    /// </summary>
    /// <param name="name">The name of the sql to get.</param>
    /// <returns>The sql associated with the given <paramref name="name".</returns>
    public static string Get(string name)
    {
        return cache.GetOrAdd(name, LoadSql);         
    }

    private static string LoadSql(string name)
    {
        var assembly = typeof(Sql).GetTypeInfo().Assembly;
        var test = assembly.GetManifestResourceNames();
        var resourceStream = assembly.GetManifestResourceStream($"MuscleWeb.SqlQueries.{name}.sql");        
        using (var reader = new StreamReader(resourceStream, Encoding.UTF8))
        {
            return reader.ReadToEnd();
        }
    }
}