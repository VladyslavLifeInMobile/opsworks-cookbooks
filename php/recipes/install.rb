name "php"
description "Install php from source"
override_attributes(
  "php" => {
    "install_method" => "source"
  }
)
run_list(
  "recipe[php]"
)