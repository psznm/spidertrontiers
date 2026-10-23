#!/usr/bin/env nix-shell
#! nix-shell -i bash -p zip jq gnugrep

pkg_name="$(jq -r  .name info.json)"
zip_name="${pkg_name}_$(jq -r  .version info.json).zip"
rm -f "${pkg_name}_*.zip"

ln -sf . $pkg_name;
zip -r $zip_name $(ls -d $pkg_name/* | grep -v pack.sh | grep -v "/$pkg_name")
if [ -d ~/.factorio/mods ]; then
    mv ${pkg_name}_*.zip ~/.factorio/mods
fi

