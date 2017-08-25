using System.Collections.Generic;

public class MuscleGroupHierarchy
{
    public long Id { get; set; }

    public string Name { get;set; }

    public string LatinName { get; set; }

    public long? ParentId {get; set; }

    public ICollection<MuscleResponse> Muscles { get; set; } 

    public ICollection<MuscleGroupHierarchy> SubMuscleGroups {get;set;}
}

