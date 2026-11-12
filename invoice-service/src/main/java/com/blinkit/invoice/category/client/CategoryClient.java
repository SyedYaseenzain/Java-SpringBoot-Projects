package com.blinkit.invoice.category.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.blinkit.invoice.category.response.CategoryResponse;

@FeignClient(name = "product-category" , configuration = TracingFeignConfig.class)
public interface CategoryClient {
	
	@GetMapping("/category/{id}")
	CategoryResponse getCategoryById(@PathVariable("id") Long id);
}
