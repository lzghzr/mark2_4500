rm ./mark2_4500.zip
dtc -@ -I dts -O dtb -o ./dtbo/origin_pdx203.dtbo ./dts/origin_pdx203.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/origin_pdx206.dtbo ./dts/origin_pdx206.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/overlay_pdx203.dtbo ./dts/overlay_pdx203.dts &> /dev/null
dtc -@ -I dts -O dtb -o ./dtbo/overlay_pdx206.dtbo ./dts/overlay_pdx206.dts &> /dev/null
zip -r mark2_4500.zip ./ -x "build.sh" -x "dts/*" &> /dev/null