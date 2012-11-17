class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main controllers

    firstController = FirstController.alloc.initWithNibName(nil, bundle: nil)
    secondController = SecondController.alloc.initWithNibName(nil, bundle: nil)

    # Create and style the tabBar controller

    tabBarController = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tabBarController.tabBar.backgroundImage = UIImage.imageNamed('tabbar-background.png')
    tabBarController.tabBar.selectionIndicatorImage = UIImage.imageNamed('tabbar-background-pressed.png')
    tabBarController.viewControllers = [firstController, secondController]

    # Create the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = tabBarController
    @window.makeKeyAndVisible

    true
  end
end
