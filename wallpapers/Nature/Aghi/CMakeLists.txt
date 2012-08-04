set(INSTALL_DIR "${CMAKE_INSTALL_DATADIR}/wallpapers/Nature/Aghi")

file(GLOB PICTURES "contents/images/*.jpg")
install(FILES metadata.desktop DESTINATION ${INSTALL_DIR})
install(FILES contents/screenshot.jpg DESTINATION ${INSTALL_DIR}/contents)
install(FILES ${PICTURES} DESTINATION ${INSTALL_DIR}/contents/images)
