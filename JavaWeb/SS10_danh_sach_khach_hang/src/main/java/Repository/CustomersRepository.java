package Repository;

import java.util.ArrayList;
import java.util.List;

import Model.Customer;

public class CustomersRepository implements ICustomersRepository {
    private static List<Customer> customersList = new ArrayList<>();
    static {
    	customersList.add(new Customer(1,"Nam",true,3,1));
    	customersList.add(new Customer(2,"Linh",false,9,1));
    	customersList.add(new Customer(3,"Huy",true,6,1));
    	customersList.add(new Customer(4,"Nam",false,8,1));
    	customersList.add(new Customer(5,"Hao",true,7,1));
    }
    
    @Override
    public List<Customer> findAll() {
      

        return customersList;
    }

    @Override
    public boolean add(Customer customer) {
    
        return customers.add(customer);
    }
}
