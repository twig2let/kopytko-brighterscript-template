const { isBrsFile } = require('brighterscript/dist/astUtils/reflection');
const { createVisitor, WalkMode } = require('brighterscript/dist/astUtils/visitors');

const matchers = /{{insert-component-uri-override}}|{{insert-cloudfront-url}}/gi;
const replacements = {
    '{{insert-cloudfront-url}}': `"${process.env.CLOUDFRONT_URL}"`
}

module.exports = function () {
    return {
        name: 'performStringReplacements',
        // transform AST before transpilation
        beforeFileTranspile: (event) => {
            if (isBrsFile(event.file)) {
                event.file.ast.walk(createVisitor({
                    CommentStatement: (statement) => {
                        statement.comments.forEach((comment) => {
                            const match = comment.text.match(matchers);
                            if (match) {
                                const strMatch = match[0];
                                event.editor.setProperty(comment, 'text', replacements[strMatch] || comment.text);
                            }
                        });
                    }
                }), {
                    walkMode: WalkMode.visitExpressionsRecursive
                });
            }
        }
    }
};
