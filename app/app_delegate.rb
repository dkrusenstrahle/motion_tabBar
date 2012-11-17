class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main controllers

    titleOffset = UIOffset.new(0, -4)

    tabNormal = UIImage.imageNamed('tabbar-activity-selected.png')
    tabSelected = UIImage.imageNamed('tabbar-activity-selected.png')

    # Style and adjust the tabBarItems

    firstViewController = FirstController.alloc.initWithNibName(nil, bundle: nil)
    firstViewController.tabBarItem = UITabBarItem.alloc.initWithTitle('First', image: nil, tag: 0)
    firstViewController.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)  
    firstViewController.tabBarItem.setTitlePositionAdjustment(titleOffset)

    secondViewController = SecondController.alloc.initWithNibName(nil, bundle: nil)
    secondViewController.tabBarItem = UITabBarItem.alloc.initWithTitle('Second', image: nil, tag: 0)
    secondViewController.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)  
    secondViewController.tabBarItem.setTitlePositionAdjustment(titleOffset)

    # Create and style the tabBar controller

    tabBarController = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tabBarController.tabBar.backgroundImage = UIImage.imageNamed('tabbar-background.png')
    tabBarController.tabBar.selectionIndicatorImage = UIImage.imageNamed('tabbar-background-pressed.png')
    tabBarController.viewControllers = [firstViewController, secondViewController]

    # Create the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = tabBarController
    @window.makeKeyAndVisible

    true
  end
end
