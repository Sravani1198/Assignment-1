using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyAppModels;

namespace MyAppDb.DBOutput
{
     public class EmployeeRepository
    {
        public int AddEmployee(EmployeeModel model)
        {
            using (var context = new Database2Entities())
            {
                EmployeeTable emp = new EmployeeTable()
                {
                    FirstName = model.FirstName,
                    LastName = model.LastName,
                    Email = model.Email,
                    Code = model.Code
                };
                context.EmployeeTable.Add(emp);

                context.SaveChanges();

                 return emp.Id;
            }
        }
    }
}
