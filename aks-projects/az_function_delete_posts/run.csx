using System.IO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using System.Net.Http;
using Newtonsoft.Json.Linq;

public static async Task<IActionResult> Run(
    [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequest req)
{
    var client = new HttpClient();
    
    // Replace with your Ghost API endpoint and key
    var ghostApiEndpoint = "https://yourghostdomain.com/ghost/api/v4/admin/posts/";
    var apiKey = "YOUR_GHOST_API_KEY";

    var response = await client.GetAsync(ghostApiEndpoint + "?key=" + apiKey);
    var content = await response.Content.ReadAsStringAsync();
    
    var posts = JObject.Parse(content)["posts"];
    
    foreach(var post in posts)
    {
        var postId = post["id"].ToString();
        await client.DeleteAsync(ghostApiEndpoint + postId + "?key=" + apiKey);
    }

    return new OkObjectResult("All posts deleted.");
}
