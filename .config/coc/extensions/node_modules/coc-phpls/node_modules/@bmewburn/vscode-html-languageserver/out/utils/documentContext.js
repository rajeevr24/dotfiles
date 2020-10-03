"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getDocumentContext = void 0;
const strings_1 = require("../utils/strings");
const url = require("url");
function getDocumentContext(documentUri, workspaceFolders) {
    function getRootFolder() {
        for (let folder of workspaceFolders) {
            let folderURI = folder.uri;
            if (!strings_1.endsWith(folderURI, '/')) {
                folderURI = folderURI + '/';
            }
            if (strings_1.startsWith(documentUri, folderURI)) {
                return folderURI;
            }
        }
        return undefined;
    }
    return {
        resolveReference: (ref, base = documentUri) => {
            if (ref[0] === '/') {
                if (strings_1.startsWith(base, 'file://')) {
                    let folderUri = getRootFolder();
                    if (folderUri) {
                        return folderUri + ref.substr(1);
                    }
                }
            }
            try {
                return url.resolve(base, ref);
            }
            catch (_a) {
                return '';
            }
        },
    };
}
exports.getDocumentContext = getDocumentContext;
