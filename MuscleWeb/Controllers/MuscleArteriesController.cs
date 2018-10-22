using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using DbReader;
using System.Linq;

[Route("api/[controller]")]
public class MuscleArteriesController : Controller
{
    private IDbConnection connection;

    public MuscleArteriesController(IDbConnection connection)
    {
        this.connection = connection;
    }
    
    [HttpGet("{id}")]
    public MuscleArteryHierarchy Get(int id)
    {        
        string sql = null;       
        sql = Sql.Get("MuscleArteryHierarchy");

        var groups = connection.Read<MuscleArteryHierarchy>(sql, new {groupid = id}).ToArray();                 
        var map = new Dictionary<long?, MuscleArteryHierarchy>();
        foreach (var group in groups)
        {
            if (group.ParentId != null)
            {
                map[group.ParentId].SubArteryGroups.Add(group);
            }
            map.Add(group.Id, group);
            
        }
        var topLevelGroup = map.First().Value;
        return topLevelGroup;
    }                    
//   if (employee.ReportsTo != null)
//   {
//   	map[employee.ReportsTo].Employees.Add(employee);
//   }
//   map.Add(employee.EmployeeId, employee);
// }

// var initialEmployee = map.First().Value;
//         return null;
//     }   
}