SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "    Fake Gyro Module           "
  ui_print "    Build by Claude & Loc      "
  ui_print "*******************************"
}

on_install() {
  ui_print "- Đang cài đặt..."
  # Lệnh này sẽ copy mọi thứ trong thư mục system của module vào máy
  cp -r $PACKAGE/system $MODPATH/
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
