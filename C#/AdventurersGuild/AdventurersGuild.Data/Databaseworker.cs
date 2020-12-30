namespace AdventurersGuild.Data
{
    using System.Collections.Generic;
    using System.Linq;

    public class Databaseworker
    {
        private static AdventurersGuildDatabaseEntities DBEF = new AdventurersGuildDatabaseEntities();

        /// <summary>
        /// gives back all adventurers from database in a list
        /// </summary>
        public static List<ADVENTURER> ADVENTURERS
        {
            get { return DBEF.ADVENTURER.Select(x => x).ToList(); }
        }

        /// <summary>
        /// Gives back all clients from database in a list.
        /// </summary>
        public static List<CLIENT> CLIENTS
        {
            get { return DBEF.CLIENT.Select(x => x).ToList(); }
        }

        /// <summary>
        /// Gives back all jobs from database in a list.
        /// </summary>
        public static List<JOB> JOBS
        {
            get { return DBEF.JOB.Select(x => x).ToList(); }
        }

        /// <summary>
        /// Gives back all mosnters from database in a list.
        /// </summary>
        public static List<MONSTER> MONSTERS 
        {
            get { return DBEF.MONSTER.Select(x => x).ToList(); }
        }

        /// <summary>
        /// Gives back all poeple from database in a list.
        /// </summary>
        public static List<PERSON> PEOPLE
        {
            get { return DBEF.PERSON.Select(x => x).ToList(); }
        }

        /// <summary>
        /// Deletes all PERSON entities from database.
        /// </summary>
        public static void DeleteAllPeople ()
        {
            DBEF.PERSON.RemoveRange(DBEF.PERSON);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes all PERSON entities from database
        /// </summary>
        public static void DeleteAllClients()
        {
            DBEF.CLIENT.RemoveRange(DBEF.CLIENT);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes all JOB entities from database
        /// </summary>
        public static void DeleteAllJobs()
        {
            DBEF.JOB.RemoveRange(DBEF.JOB);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes all MONSTER entities from database
        /// </summary>
        public static void DeleteAllMonsters()
        {
            DBEF.MONSTER.RemoveRange(DBEF.MONSTER);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes all ADVENTURER entities from database
        /// </summary>
        public static void DeleteAllAdventurers()
        {
            DBEF.ADVENTURER.RemoveRange(DBEF.ADVENTURER);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes a PERSON from database.
        /// </summary>
        public static void DeletePerson(PERSON person)
        {
            DBEF.PERSON.Remove(person);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes a CLIENT from database.
        /// </summary>
        public static void DeleteClient(CLIENT client)
        {
            DBEF.CLIENT.Remove(client);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes a JOB from database.
        /// </summary>
        public static void DeleteJob(JOB job)
        {
            DBEF.JOB.Remove(job);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes a MONSTER from database.
        /// </summary>
        public static void DeleteMonster(MONSTER monster)
        {
            DBEF.MONSTER.Remove(monster);
            DBEF.SaveChanges();
        }

        /// <summary>
        /// Deletes a ADVENTURER from database.
        /// </summary>
        public static void DeleteAdventurer(ADVENTURER adventurer)
        {
            DBEF.ADVENTURER.Remove(adventurer);
            DBEF.SaveChanges();
        }

        public static void AddAdventurer(ADVENTURER adventurer)
        {
            DBEF.ADVENTURER.Add(adventurer);
            DBEF.SaveChanges();
        }
        
        public static void AddClient(CLIENT client)
        {
            DBEF.CLIENT.Add(client);
            DBEF.SaveChanges();
        }

        public static void AddJob(JOB job)
        {
            DBEF.JOB.Add(job);
            DBEF.SaveChanges();
        }

        public static void AddMonster(MONSTER monster)
        {
            DBEF.MONSTER.Add(monster);
            DBEF.SaveChanges();
        }

        public static void AddPerson(PERSON person)
        {
            DBEF.PERSON.Add(person);
            DBEF.SaveChanges();
        }
    }
}
