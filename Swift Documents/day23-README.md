## Day 23 :white_check_mark:
### Masterpoint
####  What you learned
- Image views using UIImageView, as well as the data inside them, UIImage. Remember: a UIImage contains the pixels, but a UIImageView displays them – i.e., positions and sizes them. You also saw how iOS handles retina and retina HD screens using @2x and @3x filenames.
- Buttons using UIButton. These don’t have any special design in iOS by default – they just look like labels, really. But they do respond when tapped, so you can take some action.
- View controllers using UIViewController. These give you all the fundamental display technology required to show one screen, including things like rotation and multi-tasking on iPad.
- System alerts using UIAlertController. We used this to show a score in project 2, but it’s helpful for any time you need the user to confirm something or make a choice.
- Navigation bar buttons using UIBarButtonItem. We used the built-in action icon, but there are lots of others to choose from, and you can use your own custom text if you prefer.
- Colors using UIColor, which we used to outline the flags with a black border. There are lots of built-in system colors to choose from, but you can also create your own.
- Sharing content to Facebook and Twitter using UIActivityViewController. This same class also handles printing, saving images to the photo library, and more.
#### Key Points
```swift
let items = try! fm.contentsOfDirectory(atPath: path)
```
Swift requires any calls that might fail to be called using the try keyword, which forces you to add code to catch any errors that might result. However, because we know this code will work – it can’t possibly be mistyped – we can use the try! keyword, which means “don’t make me catch errors, because they won’t happen.” Of course, if you’re wrong – if errors do happen – then your app will crash, so be careful!
<hr/>

```swift
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
}
```
<hr/>

```swift
let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)

if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
}
```


