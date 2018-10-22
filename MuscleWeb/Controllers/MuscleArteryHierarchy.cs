using System.Collections.Generic;

public class MuscleArteryHierarchy
{
    public long Id { get; set; }

    public string Name { get;set; }

    public string LatinName { get; set; }

    public long? ParentId {get; set; }

    public ICollection<MuscleResponse> Muscles { get; set; } 

    public ICollection<MuscleArteryHierarchy> SubArteryGroups {get;set;}
}

