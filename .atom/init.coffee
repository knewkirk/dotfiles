# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# TITLE CHANGING
# atom.workspace.observeTextEditors (editor) ->
    # if editor.getTitle() isnt "untitled"
        # sp = editor.getPath().split('/')
        # console.log sp
        # title = sp.join('/')
        # document.title = title
        # editor.getLongTitle = -> title

# for item in atom.workspace.getPaneItems()
    # if item.emitter?
        # item.emitter.emit "did-change-title", item.getTitle()


# COMMENT AND GOTO NEXT LINE
atom.commands.add 'atom-text-editor', 'custom:comment-and-goto-next-line', ->
    editor = atom.workspace.getActiveTextEditor()
    editor.selectLinesContainingCursors()
    selections = editor.getSelections()
    selections[0].toggleLineComments()
    editor.moveDown(0)
