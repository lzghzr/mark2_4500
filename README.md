# mark2_4500
Xperia II系列更换三代电池后扩容模块
<br />
<br />

三代电池数据来自 [sonyxperiadev/kernel](https://github.com/sonyxperiadev/kernel/tree/aosp/LA.UM.9.14.r1/arch/arm64/boot/dts/somc)
<br />

仅适配 Xperia 三代电池，并且根据三代电池数据修改了
1. 最高充电电压
2. 最高充电电流
3. 电池保护电压
4. 阶梯充电电压
5. 恒流充电阈值
<br />

有三代数据但无法修改的
1. 充电温控曲线
2. 30W 快充
<br />
<br />

如果你更换其他第三方电池，请勿直接使用本模块<br />
向电池供应商索要电池数据并自行修改以上数据
<br />

本项目提供的自动打包脚本，需要使用Linux并且安装zip，修改数据后运行 `./build.sh` 即可