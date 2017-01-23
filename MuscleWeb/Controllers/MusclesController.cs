using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

[Route("api/[controller]")]
public class MusclesController : Controller
{
    /// <summary>
    /// Gets a list of muscles that matches the given <paramref name="searchTerm"/>.
    /// </summary>
    /// <param name="searchTerm">The search term to be used when searching fro muscles.</param>
    /// <returns>A list of <see name="MuscleResponse"/> that matches the given <paramref name="searchTerm"/>.</returns>
    public IEnumerable<MuscleResponse> Get(string searchTerm)
    {
        // To be replaces with a database query.
        yield return new MuscleResponse(){Id = 1, Name = "Temporal muscle", LatinName = "M. temporalis", Functio = "Elevation of the mandible; posterior fibers pulls the mandible backward" };        
    }
}