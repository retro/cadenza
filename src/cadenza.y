class Cadenza::Parser

rule
  target:
    : document
    | /* none */ { result = nil }
    ;

  primary_expression:
    : INTEGER { result = ConstantNode.new(val[0].value) }
    | REAL    { result = ConstantNode.new(val[0].value) }
    | STRING  { result = ConstantNode.new(val[0].value) }
    ;

  inject_statement:
    : VAR_OPEN primary_expression VAR_CLOSE { result = InjectNode.new(val[1]) }
    ;

  document:
    : inject_statement { @document.children.push(val[0]) }
    ;

---- header ----
# parser.rb : generated by racc
  
---- inner ----
attr_reader :lexer

def initialize(options={})
  @lexer = options.fetch(:lexer, Cadenza::Lexer.new)

  raise "Lexers passed to the parser must define next_token" unless @lexer.respond_to?(:next_token)

  raise "Lexers passed to the parser must define source=" unless @lexer.respond_to?(:source=)
end

def parse(source)
  @lexer.source = source
  @document = DocumentNode.new
  do_parse
  @document
end

def next_token
  @lexer.next_token
end