using System.Collections.Generic;
public class ArteryDetails
{
    /// <summary>
    /// Gets or sets the Id (non-medical) of the artery.
    /// </summary>
    /// <returns></returns>

    //public long muscle_id { get; set; }

    /// <summary>
    /// Gets or sets the name of the artery.
    /// </summary>    
    //public string Name { get; set; }

    /// <summary>
    /// Gets or sets the Latin name of the artery.
    /// </summary>    
    //public string LatinName { get; set; }



    //public string artery_latinName { get; set; }

    /// <summary>
    /// Gets or sets the muscles supplied by this artery.
    /// </summary>

    public long Id { get; set; }

    public long Link_Muscle_Id { get; set; }

    public long Artery_Id { get; set; }

    public string Artery_Name { get; set; }

    public string Artery_latinName { get; set; }    

    public ICollection<ArteryMuscle> ArteryMuscles { get; set; }


}