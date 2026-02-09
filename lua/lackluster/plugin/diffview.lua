local spec = require("lackluster.spec")
local color = require("lackluster.color")

---@param theme LacklusterTheme
---@return LacklusterHighlightGroup
return function(theme)
    return {
        plugin_name = "diffview",
        highlight = {
            spec.fg("DiffDeleteOurs", color.red),
            spec.fg("DiffDeleteTheirs", color.red),

            spec.bg("DiffAddOurs", color.red),
            spec.bg("DiffAddTheirs", color.green),

            spec.bg("DiffChangeOurs", color.red),
            spec.bg("DiffChangeTheirs", color.green),

            spec.bg("DiffTextOurs", color.red),
            spec.bg("DiffTextTheirs", color.green),

            spec.co("ConflictOursLabel", color.gray1, color.yellow, { bold = true, italic = true }),
            spec.co("ConflictOursContent", color.gray6, color.yellow),

            spec.co("ConflictTheirsLabel", color.gray1, color.orange, { bold = true, italic = true }),
            spec.co("ConflictTheirsContent", color.gray6, color.orange),

            spec.co("ConflictEnd", color.none, color.orange, { bold = true }),

            -- spec.fg("DiffAdd", theme.diff.add),
            -- spec.fg("DiffChange", theme.diff.change),
            -- spec.fg("DiffDelete", theme.diff.delete),
            -- spec.fg("DiffText", theme.diff.info),
            -- spec.fg("DiffAdded", theme.diff.add),
            -- spec.fg("DiffRemoved", theme.diff.delete),
            -- spec.fg("DiffChanged", theme.diff.change),
            -- spec.fg("DiffOldFile", theme.diff.info),
            -- spec.fg("DiffNewFile", theme.diff.add),
            -- spec.fg("DiffFile", theme.diff.change),
            -- spec.fg("DiffLine", theme.diff.change),
            -- spec.fg("DiffIndexLine", theme.diff.info),
        },
    }
end
