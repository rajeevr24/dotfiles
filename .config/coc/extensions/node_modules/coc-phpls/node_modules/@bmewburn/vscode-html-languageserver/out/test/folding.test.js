"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
require("mocha");
const assert = require("assert");
const htmlFolding_1 = require("../modes/htmlFolding");
const languageModes_1 = require("../modes/languageModes");
const vscode_css_languageservice_1 = require("vscode-css-languageservice");
function assertRanges(lines, expected, message, nRanges) {
    const document = languageModes_1.TextDocument.create('test://foo/bar.html', 'html', 1, lines.join('\n'));
    const workspace = {
        settings: {},
        folders: [{ name: 'foo', uri: 'test://foo' }]
    };
    const languageModes = languageModes_1.getLanguageModes({ css: true, javascript: true }, workspace, vscode_css_languageservice_1.ClientCapabilities.LATEST);
    const actual = htmlFolding_1.getFoldingRanges(languageModes, document, nRanges, null);
    let actualRanges = [];
    for (let i = 0; i < actual.length; i++) {
        actualRanges[i] = r(actual[i].startLine, actual[i].endLine, actual[i].kind);
    }
    actualRanges = actualRanges.sort((r1, r2) => r1.startLine - r2.startLine);
    assert.deepEqual(actualRanges, expected, message);
}
function r(startLine, endLine, kind) {
    return { startLine, endLine, kind };
}
suite('HTML Folding', () => {
    test('Embedded JavaScript', () => {
        const input = [
            '<html>',
            '<head>',
            '<script>',
            'function f() {',
            '}',
            '</script>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 6), r(1, 5), r(2, 4), r(3, 4)]);
    });
    test('Embedded JavaScript - multiple areas', () => {
        const input = [
            '<html>',
            '<head>',
            '<script>',
            '  var x = {',
            '    foo: true,',
            '    bar: {}',
            '  };',
            '</script>',
            '<script>',
            '  test(() => { // hello',
            '    f();',
            '  });',
            '</script>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 13), r(1, 12), r(2, 6), r(3, 6), r(8, 11), r(9, 11)]);
    });
    test('Embedded JavaScript - incomplete', () => {
        const input = [
            '<html>',
            '<head>',
            '<script>',
            '  var x = {',
            '</script>',
            '<script>',
            '  });',
            '</script>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 8), r(1, 7), r(2, 3), r(5, 6)]);
    });
    test('Embedded JavaScript - regions', () => {
        const input = [
            '<html>',
            '<head>',
            '<script>',
            '  // #region Lalala',
            '   //  #region',
            '   x = 9;',
            '  //  #endregion',
            '  // #endregion Lalala',
            '</script>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 9), r(1, 8), r(2, 7), r(3, 7, 'region'), r(4, 6, 'region')]);
    });
    test('Embedded CSS', () => {
        const input = [
            '<html>',
            '<head>',
            '<style>',
            '  foo {',
            '   display: block;',
            '   color: black;',
            '  }',
            '</style>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 8), r(1, 7), r(2, 6), r(3, 5)]);
    });
    test('Embedded CSS - multiple areas', () => {
        const input = [
            '<html>',
            '<head style="color:red">',
            '<style>',
            '  /*',
            '    foo: true,',
            '    bar: {}',
            '  */',
            '</style>',
            '<style>',
            '  @keyframes mymove {',
            '    from {top: 0px;}',
            '  }',
            '</style>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 13), r(1, 12), r(2, 6), r(3, 6, 'comment'), r(8, 11), r(9, 10)]);
    });
    test('Embedded CSS - regions', () => {
        const input = [
            '<html>',
            '<head>',
            '<style>',
            '  /* #region Lalala */',
            '   /*  #region*/',
            '   x = 9;',
            '  /*  #endregion*/',
            '  /* #endregion Lalala*/',
            '</style>',
            '</head>',
            '</html>',
        ];
        assertRanges(input, [r(0, 9), r(1, 8), r(2, 7), r(3, 7, 'region'), r(4, 6, 'region')]);
    });
    test('Test limit', () => {
        const input = [
            '<div>',
            ' <span>',
            '  <b>',
            '  ',
            '  </b>,',
            '  <b>',
            '   <pre>',
            '  ',
            '   </pre>,',
            '   <pre>',
            '  ',
            '   </pre>,',
            '  </b>,',
            '  <b>',
            '  ',
            '  </b>,',
            '  <b>',
            '  ',
            '  </b>',
            ' </span>',
            '</div>',
        ];
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11), r(6, 7), r(9, 10), r(13, 14), r(16, 17)], 'no limit', undefined);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11), r(6, 7), r(9, 10), r(13, 14), r(16, 17)], 'limit 8', 8);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11), r(6, 7), r(13, 14), r(16, 17)], 'limit 7', 7);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11), r(13, 14), r(16, 17)], 'limit 6', 6);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11), r(13, 14)], 'limit 5', 5);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3), r(5, 11)], 'limit 4', 4);
        assertRanges(input, [r(0, 19), r(1, 18), r(2, 3)], 'limit 3', 3);
        assertRanges(input, [r(0, 19), r(1, 18)], 'limit 2', 2);
        assertRanges(input, [r(0, 19)], 'limit 1', 1);
    });
});
