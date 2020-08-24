abstract class Employee {
  String getOffice();
}

class Department implements Employee {
  List<Employee> employees = [];
  void addEmployee(Employee employee) => employees.add(employee);

  @override
  String getOffice() {
    return '    => Department \n     ' +
        employees.map((e) => e.getOffice() + '\n     ').join();
  }
}

class CEO extends Employee {
  @override
  String getOffice() => '    => CEO';
}

class CTO extends Employee {
  @override
  String getOffice() => '    => CTO';
}

class Secretary extends Employee {
  @override
  String getOffice() => '    => Secretary';
}

class Analyst extends Employee {
  @override
  String getOffice() => '    => Analyst';
}

void main(List<String> args) {
  var company = <Employee>[];

  company.add(CEO());
  company.add(CTO());
  company.add(Secretary());
  var departamento = Department();
  departamento.addEmployee(Analyst());
  departamento.addEmployee(Analyst());
  departamento.addEmployee(Secretary());
  company.add(departamento);

  company.forEach((employee) => print(employee.getOffice()));
}
