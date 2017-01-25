/// <summary>
/// A class that represents the a single entry in the muscle search result.
/// </summary>
public class MuscleResponse
{
    /// <summary>
    /// Gets or sets the Id (non-medical) of the muscle.
    /// </summary>
    /// <returns></returns>
    public long Id {get;set;}
    
    /// <summary>
    /// Gets or sets a description of the function of the muscle. 
    /// </summary>    
    public string Functio { get; set; }

    /// <summary>
    /// Gets or sets the Latin name of the muscle
    /// </summary>    
    public string LatinName { get; set; }

    /// <summary>
    /// Gets or sets the name of the muscle.
    /// </summary>    
    public string Name { get; set; }    
}
