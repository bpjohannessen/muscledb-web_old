using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;

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
        string sql = $"SELECT * FROM musclesearch WHERE musclesearch MATCH @searchTerm";
        var result = connection.Read<MuscleResponse>(sql, new {searchTerm = searchTerm});
        return result;
    }
}