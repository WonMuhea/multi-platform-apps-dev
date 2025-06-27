using SQLite;
using LocationTrackerApp.Models;
namespace LocationTrackerApp.Services;


public static class TripDatabase
{
    static SQLiteAsyncConnection? db;

    public static async Task InitAsync()
    {
        if (db != null)
            return;

        var path = Path.Combine(FileSystem.AppDataDirectory, "trip.db");
        db = new SQLiteAsyncConnection(path);
        await db.CreateTableAsync<TripLocation>();
    }

    public static Task<int> SaveLocationAsync(TripLocation location) =>
        db!.InsertAsync(location);

    public static Task<List<TripLocation>> GetLocationsAsync(string tripId) =>
        db!.Table<TripLocation>().Where(x => x.TripId == tripId).ToListAsync();
    
    public static Task<int> ClearAllAsync() =>
        db!.DeleteAllAsync<TripLocation>();
}
