
//Access modifiers/Specifiers
//Public
class Employee {
    public empID: number; //Access specifier
    empName: string; //Access specifiers
}
//create a variable

let emp = new Employee(); //Instance created
emp.empID = 101;
emp.empName = "Sramu";
console.log(emp.empID + " " + emp.empName);


class Student {
    public stName: string;
    stRollno: number;
    stsection: string;
    stCity: string;
    stID: string;
}
let obj = new Student();
obj.stName = "Sravs";
obj.stRollno = 102;
obj.stsection = "A";
obj.stCity = "Vizag";
obj.stID = "16NM1A04D7";

console.log("Name of the Student " +  obj.stName  + " RollNumber " +  obj.stRollno  + " Section " +  obj.stsection  + " City " +  obj.stCity  + " ID Number "  + obj.stID);

//Private

class Employee2 {
    public empID: number;
    private empName: string;

    constructor(ID: number, Name: string) {
        this.empID = ID;
        this.empName = Name;
    }
    public display() {
        return ('EmployeeID:' + this.empID + " " + 'EmployeeName:' + this.empName);
    }

}
//closing block of class-Employee
//lets instantiate

let employee = new Employee2(100, "Sravs");
employee.empID = 101;
//employee.empName = "Sravani Kumari"; //Property empName is private and on;y accessable within the class
console.log(employee.display());

//Protected
class student {
    public stID: number;
    protected stName: string;
    constructor(ID: number, name: string) {
        this.stID = ID;
        this.stName = name;
    }
}
class person extends student {
    private department: string;
    constructor(ID: number, name: string, department: string) {
        //Properties of parent calss
        super(ID, name);
        this.department = department;
    }
    //Object to call class=>>Method=>>Invoke the class
    public Getresult() {
        return ('student ID: ${ this.stID }, stName: ${ this.stName } and I am in ${ this.department }');
    }
}
let Jasmine: person = new person(101, "Sravani", "Electrnics and Communication");
console.log(Jasmine.Getresult());

console.log('Hello world');

