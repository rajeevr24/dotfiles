import { InitializeParams, InitializeResult, ConfigurationParams, ColorInformation } from 'vscode-languageserver';
import { CancellationToken, PublishDiagnosticsParams, TextDocumentContentChangeEvent } from 'vscode-languageserver-protocol';
import { DocumentLink, SymbolInformation, CompletionItem, Position, Range, TextDocumentIdentifier, VersionedTextDocumentIdentifier, TextDocumentItem, FormattingOptions, Color } from 'vscode-languageserver-types';
import { Settings } from './modes/languageModes';
export declare namespace HtmlCssJsService {
    function initialise(params: InitializeParams): InitializeResult;
    function shutdown(): void;
    function openDocument(textDocumentItem: TextDocumentItem): void;
    function closeDocument(textDocumentIdentifier: TextDocumentIdentifier): void;
    function changeDocument(textDocumentIdentifier: VersionedTextDocumentIdentifier, changes: TextDocumentContentChangeEvent[]): void;
    function setConfig(config: any): void;
    function diagnose(textDocumentIdentifier: TextDocumentIdentifier): Promise<PublishDiagnosticsParams>;
    function provideCompletions(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").CompletionList | import("vscode-languageserver").ResponseError<any> | null>;
    function completionItemResolve(item: CompletionItem, token: CancellationToken): Thenable<CompletionItem | import("vscode-languageserver").ResponseError<unknown>>;
    function provideHover(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").Hover | import("vscode-languageserver").ResponseError<unknown> | null>;
    function provideDocumentHighlight(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").DocumentHighlight[] | import("vscode-languageserver").ResponseError<unknown>>;
    function onDefinition(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").Location | import("vscode-languageserver-types").Location[] | import("vscode-languageserver").ResponseError<unknown> | null>;
    function provideReferences(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").Location[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideSignatureHelp(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<import("vscode-languageserver-types").SignatureHelp | import("vscode-languageserver").ResponseError<unknown> | null>;
    function provideDocumentRangeFormattingEdits(textDocumentIdentifier: TextDocumentIdentifier, range: Range, options: FormattingOptions, token: CancellationToken): Thenable<import("vscode-languageserver-types").TextEdit[] | import("vscode-languageserver").ResponseError<any>>;
    function provideDocumentLinks(textDocumentIdentifier: TextDocumentIdentifier, token: CancellationToken): Thenable<DocumentLink[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideDocumentSymbols(textDocumentIdentifier: TextDocumentIdentifier, token: CancellationToken): Thenable<SymbolInformation[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideFoldingRanges(textDocumentIdentifier: TextDocumentIdentifier, token: CancellationToken): Thenable<import("vscode-languageserver-types").FoldingRange[] | import("vscode-languageserver").ResponseError<unknown> | null>;
    function provideSelectionRanges(textDocumentIdentifier: TextDocumentIdentifier, positions: Position[], token: CancellationToken): Thenable<import("vscode-languageserver-types").SelectionRange[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideDocumentColours(textDocumentIdentifier: TextDocumentIdentifier, token: CancellationToken): Thenable<ColorInformation[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideColorPresentations(textDocumentIdentifier: TextDocumentIdentifier, range: Range, color: Color, token: CancellationToken): Thenable<import("vscode-languageserver-types").ColorPresentation[] | import("vscode-languageserver").ResponseError<unknown>>;
    function provideTagClose(textDocumentIdentifier: TextDocumentIdentifier, position: Position, token: CancellationToken): Thenable<string | import("vscode-languageserver").ResponseError<unknown> | null>;
    var requestConfigurationDelegate: (params: ConfigurationParams) => Thenable<Settings>;
}
