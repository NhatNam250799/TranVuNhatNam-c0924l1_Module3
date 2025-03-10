package Service;

import java.util.List;

import Model.Customer;

public interface ICustomersService {
	List<Customer> findAll();
    boolean add(Customer customer);
}
