package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.persistence.GalleryDAO;

@Service
public class GalleryServiceImpl implements GalleryService {
	
	@Inject
	private GalleryDAO gdao;
	
	
	
	
	
}
