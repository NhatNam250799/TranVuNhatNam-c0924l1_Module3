package Service;

import java.util.List;

import Model.Customer;
import Repository.CustomersRepository;
import Repository.ICustomersRepository;

public class CustomersService implements ICustomersService{
   
   private ICustomersRepository customersRepository = new CustomersRepository();
 
    public List<Customer> findAll() {
       
        return CustomersRepository.findAll();
    }


    public boolean add(Customer customer) {
        CustomersRepository.add(customer);
        return true;
    }
}
