function reorderTable() {
    globalThis.ApexMonitor_Reorder = [], $("#REORDER_TABLE_report li div[data]").each((function () {
        globalThis.ApexMonitor_Reorder.push($(this).attr("data")), $("#BTN_SAVE").hide()
    })), $("#REORDER_TABLE_report").sortable({
        containment: "#REORDER_TABLE_report",
        update: function (t, r) {
            var o = [];
            $("#REORDER_TABLE_report li div[data]").each((function () {
                o.push($(this).attr("data"))
            })), JSON.stringify(globalThis.ApexMonitor_Reorder) == JSON.stringify(o) ? $("#BTN_SAVE").hide() : $("#BTN_SAVE").show()
        }
    })
}