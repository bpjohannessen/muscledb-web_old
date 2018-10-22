using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class MusclesController : Controller
{
    private IDbConnection connection;

    public MusclesController(IDbConnection connection)
    {
        this.connection = connection;
    }
    /// <summary>
    /// Gets a list of muscles that matches the given <paramref name="searchTerm"/>.
    /// </summary>
    /// <param name="searchTerm">The search term to be used when searching fro muscles.</param>
    /// <returns>A list of <see name="MuscleResponse"/> that matches the given <paramref name="searchTerm"/>.</returns>
    public IEnumerable<MuscleResponse> Get(string searchTerm)
    {        
        string sql = null;
        if (string.IsNullOrEmpty(searchTerm))
        {
            sql = "SELECT * FROM musclesearch";  
            return connection.Read<MuscleResponse>(sql);           
        }
        else
        {
            searchTerm = $"*{searchTerm}*";
            sql = $"SELECT * FROM musclesearch WHERE musclesearch MATCH @searchTerm";
            return connection.Read<MuscleResponse>(sql, new {searchTerm = searchTerm});
        }                
    }

    /// <summary>
    /// Gets detailed information for a given muscle id.
    /// </summary>
    /// <param name="id">The id of the muscle for which to get detailed information.</param>
    /// <returns><see name="MuscleDetails"/></returns>
    [HttpGet("{id}")]
    public MuscleDetails Get(int id)
    {
        string sql = Sql.Get("MuscleById");        
        //Edited from Single() to SingleOrDefault()
        var result = connection.Read<MuscleDetails>(sql, new {Id = id}).SingleOrDefault();
        return result;
    }
}