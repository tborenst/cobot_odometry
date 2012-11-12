FILE(REMOVE_RECURSE
  "../srv_gen"
  "../src/odometry_listener/srv"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/fovis_odometry.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_fovis_odometry.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
