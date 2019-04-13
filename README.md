# ResourceKit

It is a microframework to ease the way resources are loaded inside a project. The main purpose is to avoid having repetitive code inside a project.

## How to use it?
```
//given that the name of the image file is "Foo.png"
let image: UIImage = Resource(fileName: "Foo", fileExtension: "png")
let image2: UIImage = Resource(fileName: "Foo.png")
```