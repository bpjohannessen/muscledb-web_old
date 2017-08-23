using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class MuscleGroupsController : Controller
{
    private IDbConnection connection;

    public MuscleGroupsController(IDbConnection connection)
    {
        this.connection = connection;
    }
    
    [HttpGet("{id}")]
    public IEnumerable<MuscleGroupResponse> Get(int id)
    {        
        string sql = null;       
        sql = Sql.Get("MusclesByGroupId");
        return connection.Read<MuscleGroupResponse>(sql, new {groupid = id});                  
    }   
}