package Repository;

import java.util.List;

import Model.Customer;

public interface ICustomersRepository {
 List<Customer> findAll();
 boolean add (Customer customer);
}
