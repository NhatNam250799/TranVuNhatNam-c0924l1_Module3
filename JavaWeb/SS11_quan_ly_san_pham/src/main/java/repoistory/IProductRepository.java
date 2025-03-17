package repoistory;

import java.util.List;

import model.Product;

public interface IProductRepository {
	List<Product> findAll();

	boolean add(Product product);
	void update(Product product);
    boolean delete(int id);
    List<Product> findByName(String name);

	
}