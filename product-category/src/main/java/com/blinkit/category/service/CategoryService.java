package com.blinkit.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blinkit.category.entity.CategoryEntity;
import com.blinkit.category.repository.CategoryRepository;
import com.blinkit.category.request.response.CategoryRequest;
import com.blinkit.category.request.response.CategoryResponse;
import com.blinkit.product.entity.ProductEntity;

@Service
public class CategoryService {
	
	@Autowired
	
	CategoryRepository categoryRepository;
	
	public void showAllCategories() {
		
		System.out.println("CategoryService.showAllCategories() :::::::::::::::: START");
		//This fired one query to get all the categories
		//Iterable<CategoryEntity> categories = categoryRepository.findAll();
		
		List<CategoryEntity> categories = categoryRepository.getAllCategories();
		
		for(CategoryEntity categoryEntity : categories) {
			System.out.println(categoryEntity.getName());
			System.out.println(categoryEntity.getId());
			
			//one query per category (Here total 3 queries)
			List<ProductEntity> products = categoryEntity.getProducts();
			
			System.out.println("Total products are :" + products.size());
		}
		System.out.println("CategoryService.showAllCategories() :::::::::::::::: END");
	}
	
	public CategoryResponse createCategory(CategoryRequest categoryRequest) {
		CategoryEntity categoryEntity = new CategoryEntity();
		categoryEntity.setName(categoryRequest.getName());
		categoryEntity.setDescription(categoryRequest.getDescription());
		categoryEntity.setStatus("ACTIVE");
		CategoryEntity responseEntity = categoryRepository.save(categoryEntity);
		
		CategoryResponse categoryResponse = new CategoryResponse();
		categoryResponse.setId(responseEntity.getId());
		categoryResponse.setName(responseEntity.getName());
		categoryResponse.setDescription(responseEntity.getDescription());
		categoryResponse.setStatus(responseEntity.getStatus());
		
		return categoryResponse;
	}
	
	public CategoryResponse getCategoryById(Long id) {

		CategoryEntity categoryEntity = categoryRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Category not found with id: " + id));

		CategoryResponse response = new CategoryResponse();
		response.setId(categoryEntity.getId());
		response.setName(categoryEntity.getName());
		response.setDescription(categoryEntity.getDescription());
		response.setStatus(categoryEntity.getStatus());

		return response;
	}
}
