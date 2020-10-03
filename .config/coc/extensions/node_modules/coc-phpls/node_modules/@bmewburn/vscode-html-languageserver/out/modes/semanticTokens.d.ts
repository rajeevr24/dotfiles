import { Range, TextDocument, LanguageModes } from './languageModes';
export interface SemanticTokenProvider {
    readonly legend: {
        types: string[];
        modifiers: string[];
    };
    getSemanticTokens(document: TextDocument, ranges?: Range[]): number[];
}
export declare function newSemanticTokenProvider(languageModes: LanguageModes): SemanticTokenProvider;
