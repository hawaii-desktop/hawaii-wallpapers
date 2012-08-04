set(INSTALL_DIR "${CMAKE_INSTALL_THEMESDIR}/wallpapers/Nature/Finally_Summer_in_Germany")

file(GLOB PICTURES "contents/images/*.jpg")
install(FILES metadata.desktop DESTINATION ${INSTALL_DIR})
install(FILES contents/screenshot.png DESTINATION ${INSTALL_DIR}/contents)
install(FILES ${PICTURES} DESTINATION ${INSTALL_DIR}/contents/images)
