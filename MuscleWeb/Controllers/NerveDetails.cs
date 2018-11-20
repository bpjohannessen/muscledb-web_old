using System.Collections.Generic;
public class NerveDetails
{
    
    /// <summary>
    /// Gets or sets the Id (non-medical) of the nerve.
    /// </summary>
    /// <returns></returns>
    public long Id { get; set; }

    /// <summary>
    /// Gets or sets the name of the nerve.
    /// </summary>
    //public string Name { get; set; }
    public string Nerve_Name { get; set; }

    /// <summary>
    /// Gets or sets the Latin name of the nerve.
    /// </summary>
    //public string LatinName { get; set; }
    public string Nerve_latinName { get; set; }

    /// <summary>
    /// Gets or sets the muscles supplied by this nerve.
    /// </summary> 
    public ICollection<NerveMuscle> NerveMuscles { get; set; }

}