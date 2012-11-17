class SecondController < UIViewController
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

    self.title = "Second"

    view.backgroundColor = UIColor.yellowColor 
  end
end