package com.spring.mvc;

import java.io.File;

import java.nio.file.Path;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
//import java.io.FileOutputStream;

import java.util.List;

//import javax.persistence.criteria.Path;
import javax.validation.Valid;



import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  

//import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.spring.model.Book;
import com.spring.model.Category;
import com.spring.services.BookService;

@Controller
public class BookController 
{
@Autowired
private BookService bookService;

public BookService getBookService() 
{
	return bookService;
}

public void setBookService(BookService bookService) 
{
	this.bookService = bookService;
}

//http://localhost:8080/mvcorm/getAllBooks
@RequestMapping("getAllBooks")
public ModelAndView getAllBooks()
{
	List<Book> books = bookService.getAllBooks();
	return new ModelAndView("booksList","books",books);
	//WEB-INF/views/booksList.jsp
}

@RequestMapping("/getBookByIsbn/{isbn}")
public ModelAndView getBookByIsbn(@PathVariable(value="isbn") int isbn)
{
	Book b=bookService.getBookByIsbn(isbn);
	return new ModelAndView("bookPage","bookObj",b);
}

@RequestMapping("admin/delete/{isbn}")
public String deleteBook(@PathVariable (value="isbn") int isbn)
{
	Path paths=Paths.get("C:\\Users\\Alfred\\Desktop\\sample\\mvcorm\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+isbn+".png");
	if(Files.exists(paths))
			{
		    try 
		    {
				Files.delete(paths);
			} 
		    catch (IOException e) 
		    {
				e.printStackTrace();
			}
			}
	bookService.deleteBook(isbn);
	return "redirect:/getAllBooks";
}

@RequestMapping(value="/admin/book/addBook",method=RequestMethod.GET)
public String getBookForm(Model model)
{
	Book book=new Book();
	Category category=new Category();
	category.setCid(1);
	book.setCategory(category);
	model.addAttribute("bookFormObj", book);
	return "bookForm";
}

@RequestMapping(value="/admin/book/addBook",method=RequestMethod.POST)
public String addBook(@Valid @ModelAttribute (value="bookFormObj") Book book, BindingResult result) throws InterruptedException
{
	if(result.hasErrors())
		return "bookForm";
	
	bookService.addBook(book);
	
	MultipartFile bookImage=book.getBookImage();
	if((bookImage!=null) && (!bookImage.isEmpty()))
	{
	Path paths=Paths.get("C:\\Users\\Alfred\\Desktop\\sample\\mvcorm\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+book.getIsbn()+".png");
	try 
	{
	bookImage.transferTo(new File(paths.toString()));
	Thread.sleep(5000);
	//return "redirect:/getAllBooks";
	} 
	catch (IllegalStateException e) 
	{
		e.printStackTrace();
	} 
	catch (IOException e) 
	{
		e.printStackTrace();
	}
	}
	return "redirect:/getAllBooks";
}

@RequestMapping("/admin/book/editBook/{isbn}")
public ModelAndView getEditForm(@PathVariable(value="isbn") int isbn)
{
	Book book=bookService.getBookByIsbn(isbn);
	return new ModelAndView("editBookForm","editBookObj",book);
}

@RequestMapping(value="/admin/book/editBook", method=RequestMethod.POST)
public String editBook(@ModelAttribute(value="editBookObj") Book book)
{
	bookService.editBook(book);
	return "redirect:/getAllBooks";
}
}