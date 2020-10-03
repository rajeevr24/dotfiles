"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.format = void 0;
const languageModes_1 = require("./languageModes");
const arrays_1 = require("../utils/arrays");
const strings_1 = require("../utils/strings");
function format(languageModes, document, formatRange, formattingOptions, settings, enabledModes) {
    let result = [];
    let endPos = formatRange.end;
    let endOffset = document.offsetAt(endPos);
    let content = document.getText();
    if (endPos.character === 0 && endPos.line > 0 && endOffset !== content.length) {
        let prevLineStart = document.offsetAt(languageModes_1.Position.create(endPos.line - 1, 0));
        while (strings_1.isEOL(content, endOffset - 1) && endOffset > prevLineStart) {
            endOffset--;
        }
        formatRange = languageModes_1.Range.create(formatRange.start, document.positionAt(endOffset));
    }
    let allRanges = languageModes.getModesInRange(document, formatRange);
    let i = 0;
    let startPos = formatRange.start;
    let isHTML = (range) => range.mode && range.mode.getId() === 'html';
    while (i < allRanges.length && !isHTML(allRanges[i])) {
        let range = allRanges[i];
        if (!range.attributeValue && range.mode && range.mode.format) {
            let edits = range.mode.format(document, languageModes_1.Range.create(startPos, range.end), formattingOptions, settings);
            arrays_1.pushAll(result, edits);
        }
        startPos = range.end;
        i++;
    }
    if (i === allRanges.length) {
        return result;
    }
    formatRange = languageModes_1.Range.create(startPos, formatRange.end);
    let htmlMode = languageModes.getMode('html');
    let htmlEdits = htmlMode.format(document, formatRange, formattingOptions, settings);
    let htmlFormattedContent = languageModes_1.TextDocument.applyEdits(document, htmlEdits);
    let newDocument = languageModes_1.TextDocument.create(document.uri + '.tmp', document.languageId, document.version, htmlFormattedContent);
    try {
        let afterFormatRangeLength = document.getText().length - document.offsetAt(formatRange.end);
        let newFormatRange = languageModes_1.Range.create(formatRange.start, newDocument.positionAt(htmlFormattedContent.length - afterFormatRangeLength));
        let embeddedRanges = languageModes.getModesInRange(newDocument, newFormatRange);
        let embeddedEdits = [];
        for (let r of embeddedRanges) {
            let mode = r.mode;
            if (mode && mode.format && enabledModes[mode.getId()] && !r.attributeValue) {
                let edits = mode.format(newDocument, r, formattingOptions, settings);
                for (let edit of edits) {
                    embeddedEdits.push(edit);
                }
            }
        }
        if (embeddedEdits.length === 0) {
            arrays_1.pushAll(result, htmlEdits);
            return result;
        }
        let resultContent = languageModes_1.TextDocument.applyEdits(newDocument, embeddedEdits);
        let resultReplaceText = resultContent.substring(document.offsetAt(formatRange.start), resultContent.length - afterFormatRangeLength);
        result.push(languageModes_1.TextEdit.replace(formatRange, resultReplaceText));
        return result;
    }
    finally {
        languageModes.onDocumentRemoved(newDocument);
    }
}
exports.format = format;
