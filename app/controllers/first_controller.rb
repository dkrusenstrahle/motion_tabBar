class FirstController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    customize
    self
  end

  def viewDidLoad
    super
  end

  def customize

    # Set the main attributes

    self.title = "First"
    view.backgroundColor = UIColor.whiteColor 

    # Create tabBar images and style tabs

    tabNormal = UIImage.imageNamed('tabbar-activity-selected.png')
    tabSelected = UIImage.imageNamed('tabbar-activity-selected.png')

    # Style the tabBarItem

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('First', image: nil, tag: 0)
    self.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)  
  end
end