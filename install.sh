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
  ui_print "- Đang giải nén các file hệ thống..."
  
  # Giải nén thư mục system từ file zip vào đường dẫn module
  unzip -o "$ZIPFILE" 'system/*' -d "$MODPATH" >&2
  
  # Nếu bạn có file script chạy ngầm (service.sh), giải nén nó ra luôn
  unzip -o "$ZIPFILE" 'service.sh' -d "$MODPATH" >&2
}

set_permissions() {
  # Cấp quyền cơ bản cho các file trong module
  set_perm_recursive $MODPATH 0 0 0755 0644
}
