# Swift_Demo

```
    关于swift4.0的语法和控件,持续更新
```
### 创建Button
```
let newButton:UIButton = UIButton(frame: CGRect(x: 0, y: 20, width: 50, height: 50))
newButton.backgroundColor = UIColor.blue
newButton.setTitle("点我", for: .normal)
newButton.addTarget(self, action: #selector(newButtonAction), for: .touchUpInside)
self.view.addSubview(newButton)
```
### [sari.git](https://github.com/lixueyuan)
