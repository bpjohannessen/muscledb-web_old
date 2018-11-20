using System.Collections.Generic;
public class VeinDetails
{
    
    /// <summary>
    /// Gets or sets the Id (non-medical) of the vein.
    /// </summary>
    /// <returns></returns>
    public long Id { get; set; }

    /// <summary>
    /// Gets or sets the name of the vein.
    /// </summary>
    //public string Name { get; set; }
    public string Vein_Name { get; set; }

    /// <summary>
    /// Gets or sets the Latin name of the vein.
    /// </summary>
    //public string LatinName { get; set; }
    public string Vein_latinName { get; set; }

    /// <summary>
    /// Gets or sets the muscles supplied by this vein.
    /// </summary> 
    public ICollection<VeinMuscle> VeinMuscles { get; set; }

}