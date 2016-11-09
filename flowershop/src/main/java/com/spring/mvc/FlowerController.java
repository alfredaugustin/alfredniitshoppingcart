package com.spring.mvc;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.Files;
import java.util.List;

import javax.validation.Valid;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.Flower;
import com.spring.services.FlowerService;

@Controller
public class FlowerController
{
@Autowired
private FlowerService flowerService;

public FlowerService getFlowerService() 
{
	return flowerService;
}

public void setFlowerService(FlowerService flowerService) 
{
	this.flowerService = flowerService;
}

@RequestMapping("/getAllFlowers")
public ModelAndView getAllFlowers()
{
	List<Flower> flowers = flowerService.getAllFlowers();

	return new ModelAndView("flowerList","flowers",flowers);
}

@RequestMapping("/getFlowerByFid/{fid}")
public ModelAndView getFlowerByFid(@PathVariable(value="fid") int fid)
{
	Flower b=flowerService.getFlowerByFid(fid);
	return new ModelAndView("flowerPage","flowerObj",b);
}

@RequestMapping("admin/delete/{fid}")
public String deleteFlower(@PathVariable(value="fid") int fid)
{
	Path paths=Paths.get("C:\\Users\\Alfred\\Desktop\\sample\\flowershop\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+fid+".png");
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
	flowerService.deleteFlower(fid);
	//http://localhost:8080/appname/getAllFlowers
	return "redirect:/flowerListAngular";
}

@RequestMapping(value="/admin/flower/addFlower",method=RequestMethod.GET)
public String getFlowerForm(Model model)
{
	Flower flower=new Flower();
	Category category=new Category();
	category.setCid(1);//New Arrivals
	//set the category as 1 for the Flower flower
	flower.setCategory(category);
	model.addAttribute("flowerFormObj",flower);
	return "flowerForm";
	
}

@RequestMapping("/admin/flower/editFlower/{fid}")
public ModelAndView getEditForm(@PathVariable(value="fid")  int fid)
{
	Flower flower=this.flowerService.getFlowerByFid(fid);
	return new ModelAndView("editFlowerForm","editFlowerObj",flower);
}

@RequestMapping(value="/admin/flower/editFlower",method=RequestMethod.POST)
public String editFlower(@ModelAttribute(value="editFlowerObj") Flower flower)
{
flowerService.editFlower(flower);
return "redirect:/flowerListAngular";
}

@RequestMapping(value="/admin/flower/addFlower",method=RequestMethod.POST)
public String addFlower( @Valid @ModelAttribute(value="flowerFormObj")  Flower flower,BindingResult result) throws InterruptedException
{
	if(result.hasErrors())
		return "flowerForm";
	flowerService.addFlower(flower);
	
	MultipartFile flowerImage=flower.getFlowerImage();
	if((flowerImage!=null) && (!flowerImage.isEmpty()))
	{
	Path paths=Paths.get("C:\\Users\\Alfred\\Desktop\\sample\\flowershop\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+flower.getFid()+".png");
	try 
	{
	flowerImage.transferTo(new File(paths.toString()));
	Thread.sleep(5000);
	//return "redirect:/getAllFlowers";
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
	
	return "redirect:/flowerListAngular";
}

@RequestMapping("/getFlowerList")
public @ResponseBody List<Flower> getFlowersListInJSON(){
	return flowerService.getAllFlowers();
}

@RequestMapping("/flowerListAngular")
public String getFlowers(){
	return "flowerListAngular";
}

}