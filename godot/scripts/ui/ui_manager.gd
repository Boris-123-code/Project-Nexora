extends CanvasLayer


var opened_panel = null



func open_panel(panel):

    if opened_panel:

        opened_panel.hide()


    opened_panel = panel


    panel.show()



func close_panel():

    if opened_panel:

        opened_panel.hide()

        opened_panel = null
