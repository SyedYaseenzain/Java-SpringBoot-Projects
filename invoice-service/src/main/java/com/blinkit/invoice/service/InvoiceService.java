package com.blinkit.invoice.service;

import java.util.ArrayList;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.blinkit.invoice.category.response.CategoryResponse;
import com.blinkit.invoice.entity.InvoiceEntity;
import com.blinkit.invoice.repository.InvoiceRepository;
import com.blinkit.invoice.request.response.InvoiceRequest;
import com.blinkit.invoice.request.response.InvoiceResponse;

@Service
public class InvoiceService {

	@Autowired
	private InvoiceRepository invoiceRepository;

	@Autowired
	private CategoryService categoryService;
	
	private static final Logger log = LoggerFactory.getLogger(InvoiceService.class);
	
	public InvoiceResponse createInvoice(InvoiceRequest invoiceRequest) {
		
		log.info("Creating invoice for customer: {}", invoiceRequest.getCustomerName());
		
		InvoiceEntity entity = new InvoiceEntity();
		
		entity.setCustomerName(invoiceRequest.getCustomerName());
		entity.setGst(invoiceRequest.getGst());
		entity.setInvId("INV1234");
		entity.setStatus("PAID");
		
		// Call Category Service through the circuit breaker
				CategoryResponse categoryResponse = categoryService.getCategory(1L);

				if (categoryResponse != null) {
					log.info("Category name: {}", categoryResponse.getName());
				} else {
					log.warn("Category details unavailable. Continuing invoice creation.");
				}
		
		log.debug("Saving invoice with invoice ID: {}", entity.getInvId());
		
		entity = invoiceRepository.save(entity);
		
		log.info("Invoice saved successfully with database ID: {}", entity.getId());
		
		InvoiceResponse  invoiceResponse = new InvoiceResponse();
		if(entity.getId() > 0) {
			invoiceResponse.setCustomerName(entity.getCustomerName());
			invoiceResponse.setGst(entity.getGst());
			invoiceResponse.setStatus(entity.getStatus());
			invoiceResponse.setInvId(entity.getInvId());
			invoiceResponse.setId(entity.getId());
			
			log.info("Invoice response created successfully for invoice ID: {}", entity.getId());
		}
		
		return invoiceResponse;
	}
	
	@Cacheable(value = "invoices", key = "#page + '-' + #size")
	public List<InvoiceResponse> getInvoices(int page, int size) {

		log.info("Fetching invoices - page: {}, size: {}", page, size);

		log.debug("Fetching invoices from DATABASE...");

		Pageable pageable = PageRequest.of(page, size);

		Page<InvoiceEntity> result = invoiceRepository.findAll(pageable);
		
		log.info("Fetched {} invoices from database for page: {}, size: {}", result.getNumberOfElements(), page, size);


		List<InvoiceResponse> response = new ArrayList<>();

		for (InvoiceEntity invoiceEntity : result) {

			InvoiceResponse invoiceResponse = new InvoiceResponse();

			invoiceResponse.setId(invoiceEntity.getId());

			invoiceResponse.setInvId(invoiceEntity.getInvId());

			invoiceResponse.setCustomerName(invoiceEntity.getCustomerName());

			invoiceResponse.setGst(invoiceEntity.getGst());

			invoiceResponse.setStatus(invoiceEntity.getStatus());

			response.add(invoiceResponse);
		}
		log.info("Successfully prepared {} invoice responses", response.size());
		
		return response;
	}
}