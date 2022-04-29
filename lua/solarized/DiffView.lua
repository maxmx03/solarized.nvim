local DiffView = {
		DiffViewNormal = {fg = C.gray, bg = C.alt_bg, },
		DiffviewStatusAdded = {fg = C.sign_add, },
		DiffviewStatusModified = {fg = C.sign_change, },
		DiffviewStatusRenamed = {fg = C.sign_change, },
		DiffviewStatusDeleted = {fg = C.sign_delete, },
		DiffviewFilePanelInsertion = {fg = C.sign_add, },
		DiffviewFilePanelDeletion = {fg = C.sign_delete, },
		DiffviewVertSplit = {bg = C.bg, },
}

return DiffView