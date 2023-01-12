# NewArticle

## Getting Started

### Project Details

There are One screens. The screen is for showing list of Articles . 
We are showing article title, description and article image.
Data for showing the list is available in the API end


### Project Structure

To keep all those hundreds of source files from ending up in the same directory, it's a good idea to set up some folder structure depending on your architecture. For instance, you can use the following:

    ├─ Models
    ├─ Views
    ├─ ViewModels
    ├─ Resources 
    ├─ Helper
    ├─ Network Module
    
### Architecture

* [Model-View-ViewModel (MVVM)][mvvm]
    * Motivated by "massive view controllers": MVVM considers `UIViewController` subclasses part of the View and keeps them slim by maintaining all state in the ViewModel.
    
    
### Models
 
    ├─ NewListResponseModel(For fetching article data)
    ├─ NewListRequestModel(Used for send required data to API)

    
### Views
 
    ├─ ViewController(Show the list of Article)
    ├─ ListTableViewCell(Item design for each article in table view)
    
### ViewModel
 
    ├─ HomeViewModel(Minly used for communication between the Model and View. We are get the data from API send back to viewcontroller for populating data)
    
    
We are also add UnitTest cases in this project.    
    
    
    
    
    
    
