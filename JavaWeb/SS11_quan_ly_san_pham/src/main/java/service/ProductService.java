package service;

import java.util.List;

import model.Product;
import repoistory.IProductRepository;
import repoistory.ProductRepository;

public class ProductService implements IProductService {
	private final IProductRepository productRepository = new ProductRepository();

	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public boolean add(Product product) {
		productRepository.add(product);
		return true;
	}

	@Override
	public void update(Product product) {
		productRepository.update(product);
	}

	@Override
	public boolean delete(int id) {
		productRepository.delete(id);
		return false;
	}

	@Override
	public List<Product> findByName(String name) {
		return productRepository.findByName(name);
	}
}
