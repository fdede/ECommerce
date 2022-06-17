using ECommerce.Core.Models;
using System.Linq.Expressions;

namespace ECommerce.Core.Services
{
    public interface IService<T> where T : BaseEntity
    {
        Task<T> AddAsync(T entity);
        Task<T> UpdateAsync(T entity);
        Task<bool> DeleteAsync(long ID);
        Task<List<T>> GetAllAsync();
        Task<List<T>> WhereAsync(Expression<Func<T, bool>> expression);
    }
}
