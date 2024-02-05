# nx web applet generator

Quickly generate a web application for your NintendoSwitch

> [!TIP]
> At present, only macOS is supported because I only provide compilation tools for macOS (check `bin/macOS/*`), but the usage is similar in Windows and Linux. You only need to replace the corresponding tools and fine tune the compilation script (`build_mac.sh`).

1. Customize the content of the `romfs/weblink.txt` file as the url you want.
2. Modify the `bulid_mac.sh` to customize application.
3. Run the `bulid_mac.sh` script to generating nro file.
4. Open hbmenu and press **Y** to wait for automatic transmission of `***.nro` to your switch.

> [!TIP]
> 目前仅支持 macOS, 因为我只提供了 macOS 下的编译工具 (`bin/macOS/*`)，在 windows 和 linux 下使用方式是类似的，你只需要替换对应的工具和微调编译脚本即可 (`build_mac.sh`)。

1. 自定义  `romfs/weblink.txt` 文件内容为你想要的url
2. 修改 `bulid_mac.sh` 脚本，来自定义应用信息
3. 运行 `bulid_mac.sh` 脚本，生成 nro 文件
4. 打开 hbmenu，按 **Y** 键等待自动传输 `***.nro` 到你的 switch

# Thanks to

https://github.com/darkxex/RipJKAnimeNX/blob/master/source/applet.cpp