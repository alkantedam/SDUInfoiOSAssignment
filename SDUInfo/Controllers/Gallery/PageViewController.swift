//
//  PageViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/4/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class PageViewController: UIViewController, UIPageViewControllerDataSource {
 
    var pageViewController: UIPageViewController?
    
    let contentImages = ["n1", "n2", "т3", "n4", "n5", "n6", "n7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Gallery"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        createPageViewController()
        setupPageControl()
        // Do any additional setup after loading the view.
    }

    func createPageViewController(){
        let pageController = self.storyboard?.instantiateViewController(withIdentifier: "galleryController") as! UIPageViewController
        pageController.dataSource = self
        
        if contentImages.count > 0{
            let firstController = getItemController(0)!
            let startingViewController = [firstController]
            
            pageController.setViewControllers(startingViewController, direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMove(toParentViewController: self)
    }
    
    func setupPageControl(){
        
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.white
        appearance.backgroundColor = UIColor.black
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ItemGalleryViewController
        if itemController.itemIndex > 0{
            return getItemController(itemController.itemIndex-1)
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ItemGalleryViewController
        
        if itemController.itemIndex+1 < contentImages.count{
            return getItemController(itemController.itemIndex + 1)
        }
        return nil
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func currentControllerIndex() -> Int{
        let pageItemController = self.currentControllerIndex()
        if let controller = pageItemController as? ItemGalleryViewController{
            return controller.itemIndex
        }
        return -1
    }
    
    func currentController() -> UIViewController?{
        if (self.pageViewController?.viewControllers?.count)! > 0{
            return (self.pageViewController?.viewControllers![0])!
        }
        
        return nil
    }
    
    func getItemController(_ itemIndex: Int) -> ItemGalleryViewController?{
        if itemIndex < contentImages.count{
            let pageItemController = self.storyboard?.instantiateViewController(withIdentifier: "itemGalleryController") as! ItemGalleryViewController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            return pageItemController
        }
        return nil
    }
 
}

















