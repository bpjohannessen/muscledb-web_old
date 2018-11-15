using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class ArteryMusclesController : Controller
{
    private IDbConnection connection;

    public ArteryMusclesController(IDbConnection connection)
    {
        this.connection = connection;
    }

    [HttpGet("{id}")]
    public ArteryDetails Get(int id)
    {
        string sql = Sql.Get("ArteryById");        
        //Edited from Single() to SingleOrDefault()
        //Bernhard: Dette tror jeg er noe kødd med!
        var result = connection.Read<ArteryDetails>(sql, new {Id = id}).FirstOrDefault();
        
        return result;
    }
}