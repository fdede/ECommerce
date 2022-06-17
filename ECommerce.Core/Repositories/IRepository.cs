using ECommerce.Core.Models;
using System.Data.SqlClient;

namespace ECommerce.Core.Repositories
{
    public interface IRepository<T> where T : BaseEntity
    {
        Task<List<T>> ExecuteReaderAsync(SqlCommand cmd);
        Task<bool> ExecuteNonQueryAsync(SqlCommand cmd);
    }
}
