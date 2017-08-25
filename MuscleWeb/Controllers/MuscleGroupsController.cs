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
    public MuscleGroupHierarchy Get(int id)
    {        
        string sql = null;       
        sql = Sql.Get("MuscleGroupHierarchy");
        var groups = connection.Read<MuscleGroupHierarchy>(sql, new {groupid = id}).ToArray();                 
        var map = new Dictionary<long?, MuscleGroupHierarchy>();
        foreach (var group in groups)
        {
            if (group.ParentId != null)
            {
                map[group.ParentId].SubMuscleGroups.Add(group);
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