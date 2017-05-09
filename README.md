# HYTextField
禁止键盘的复制粘贴等

采用分类的写法，用runtime为其添加属性，避免使用子类从而降低耦合减少植入性。

用法：
#import "UITextField+Edit.h"
```
textField.allowedPaste = NO;
textField.allowedSelect = NO;
textField.allowedSelectAll = NO;
textField.allowedCopy = NO;
textField.allowedCut = NO;
```
