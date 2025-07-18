using SQLite;

namespace LocationTrackerApp.Models;
public class TripLocation
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }

    public string? TripId { get; set; }

    public double Latitude { get; set; }
    public double Longitude { get; set; }

    public DateTime Timestamp { get; set; }
}
