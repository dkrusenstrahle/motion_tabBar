class FirstController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    add_elements
    self
  end

  def viewDidLoad
    super
  end

  def add_elements

    # Set views title in the navigationBar

    self.title = "First"

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor 
  end
end