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
  end
end