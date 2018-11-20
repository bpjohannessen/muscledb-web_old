using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class NerveMusclesController : Controller
{
    private IDbConnection connection;

    public NerveMusclesController(IDbConnection connection)
    {
        this.connection = connection;
    }

    [HttpGet("{id}")]
    public NerveDetails Get(int id)
    {
        string sql = Sql.Get("NerveById");
        return connection.Read<NerveDetails>(sql, new {Id = id}).SingleOrDefault();
    }
}
