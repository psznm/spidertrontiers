#!/usr/bin/env nix-shell
#! nix-shell -i bash -p zip jq gnugrep
set -e

pkg_name="$(jq -r  .name info.json)"
zip_name="${pkg_name}_$(jq -r  .version info.json).zip"
rm -f "${pkg_name}_*.zip"

rm -f $pkg_name;
ln -s . $pkg_name;
zip -r $zip_name $(ls -d $pkg_name/* | grep -v pack.sh | grep -v "/$pkg_name")
if [ -d ~/.factorio/mods ]; then
    mv ${zip_name} ~/.factorio/mods/${zip_name}
fi

