using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdventurersGuild.Repository
{
    interface IRepository<T> where T : new()
    {
        List<T> GetPeople();

        List<T> GetMonsters();

        List<T> GetAdventurers();

        List<T> GetJobs();

        List<T> GetClients();

        List<T> GetAll();

        void Add(T item);

        void Delete(T item);

        void Delete(string uid);

        T Read(string uid);

        IQueryable<T> Read();

        void Update(string oldid, T newitem);

        void Save();

    }
}
