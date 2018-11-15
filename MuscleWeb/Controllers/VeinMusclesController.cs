using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class VeinMusclesController : Controller
{
    private IDbConnection connection;

    public VeinMusclesController(IDbConnection connection)
    {
        this.connection = connection;
    }

    [HttpGet("{id}")]
    public VeinDetails Get(int id)
    {
        string sql = Sql.Get("VeinById");
        return connection.Read<VeinDetails>(sql, new {Id = id}).SingleOrDefault();
    }
}
