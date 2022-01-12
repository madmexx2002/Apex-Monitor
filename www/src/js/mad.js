var mad = mad || {};
mad.IR = {
    Pagination: e => {
        apex.jQuery(apex.gPageContext$).on("apexreadyend", (function (t) {
            mad.IR.createPagination(e)
        })), apex.jQuery("#" + e).on("apexafterrefresh", (function () {
            mad.IR.createPagination(e)
        }))
    },
    createPagination: e => {
        let t = ".a-IRR-actions",
            a = '[aria-controls="' + e + '"][title="Next"],[aria-controls="' + e + '"][title="Weiter"]',
            n = '[aria-controls="' + e + '"][title="Previous"],[aria-controls="' + e + '"][title="Zurück"]';
        $("#" + e + " " + t).append('<button class="t-Button t-Button--noLabel t-Button--icon t-Button--padLeft" onclick="void(0);" type="button" id="ir_btn_prev" title="Previous Page" aria-label="Previous Page"><span class="t-Icon fa fa-chevron-left" aria-hidden="true"></span></button>'), $("#ir_btn_prev").bind("click", (function () {
            $(n).click()
        })), 0 === $(n).length && apex.item("ir_btn_prev").disable(), $("#" + e + " " + t).append('<button class="t-Button t-Button--noLabel t-Button--icon" onclick="void(0);" type="button" id="ir_btn_next" title="Next Page" aria-label="Next Page"><span class="t-Icon fa fa-chevron-right" aria-hidden="true"></span></button>'), $("#ir_btn_next").bind("click", (function () {
            $(a).click()
        })), 0 === $(a).length && apex.item("ir_btn_next").disable()
    },
    HighlightSearch: e => {
        $("#" + e).keyup((function (t) {
            t.target.id == e + "_search_field" && (v_search = $("#" + e + "_search_field").val(), v_search = v_search.toLowerCase(), globalThis.gSearch = v_search, mad.util.HighlightCell(e, globalThis.gSearch, "highlight-data"))
        })), apex.jQuery("#" + e).on("apexafterrefresh", (function () {
            mad.util.HighlightCell(e, globalThis.gSearch, "highlight-data")
        })), mad.util.insertCSS(".highlight-data {background-color: #f5df69!important}"), globalThis.gSearch = null
    }
}, mad.download = {
    downloadJSON: (e, t, a) => {
        apex.server.process(e, t, {
            loadingIndicator: a,
            loadingIndicatorPosition: "centered",
            success: function (e) {
                mad.download.saveBlob(mad.download.toBlob(e.content, e.type), e.filename),  apex.message.showPageSuccess( e.success );
            }
        })
    },
    saveBlob: (e, t) => {
        if (navigator.msSaveOrOpenBlob) navigator.msSaveOrOpenBlob(e, t);
        else {
            var a = document.createElement("a");
            a.href = URL.createObjectURL(e), a.download = t, a.style.display = "none", document.body.appendChild(a), a.click(), setTimeout((function () {
                URL.revokeObjectURL(a.href), document.body.removeChild(a)
            }), 100)
        }
    },
    toBlob: (e, t) => {
        for (var a = atob(e), n = new ArrayBuffer(a.length), i = new Uint8Array(n), o = 0; o < a.length; o++) i[o] = a.charCodeAt(o);
        return new Blob([n], {
            type: t
        })
    }
}, mad.util = {
    insertCSS: e => {
        var t = document.createElement("style");
        document.head.appendChild(t), t.sheet.insertRule(e)
    },
    HighlightCell: (e, t, a) => {
        $("#" + e + " td").each((function () {
            cellData = $(this).text(), cellData = cellData.toLowerCase(), cellData = cellData.search(t), "-1" == cellData && 0 != cellData || "" == t ? (cellData, $(this).closest("td").removeClass(a)) : $(this).closest("td").addClass(a)
        }))
    },
    isIE: function () {
        return ua = navigator.userAgent, ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1
    }
};