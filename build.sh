VERSION=`cat module.prop | head -n 3 | tail -n 1 | sed 's/.\{8\}//'`
rm -f ./mark2_4500_${VERSION}.zip
dtc -@ -I dts -O dtb -o ./dtbo/origin_pdx203.dtbo ./dts/origin_pdx203.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/origin_pdx206.dtbo ./dts/origin_pdx206.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/overlay_pdx203.dtbo ./dts/overlay_pdx203.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/overlay_pdx206.dtbo ./dts/overlay_pdx206.dts &> /dev/null
zip -qr mark2_4500_${VERSION}.zip ./ -i "bin/*" -i "dtbo/*.dtbo" -i "META-INF/*" -i "system/*" -i "customize.sh" -i "module.prop" -i "uninstall.sh"