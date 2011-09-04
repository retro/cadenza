#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

# parser.rb : generated by racc
  
module Cadenza
  class Parser < Racc::Parser

module_eval(<<'...end cadenza.y/module_eval...', 'cadenza.y', 119)
attr_reader :lexer, :container_name

def initialize(options={})
  @lexer = options.fetch(:lexer, Cadenza::Lexer.new)

  raise "Lexers passed to the parser must define next_token" unless @lexer.respond_to?(:next_token)

  raise "Lexers passed to the parser must define source=" unless @lexer.respond_to?(:source=)
end

def parse(source)
  @lexer.source = source

  @stack = [DocumentNode.new]

  do_parse

  @stack.first
end

def push_child(node)
  @stack.last.children.push(node)
end

def next_token
  @lexer.next_token
end
...end cadenza.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    33,    34,    35,    36,    37,    38,    11,    11,    79,     4,
    11,    64,     4,    47,    11,    11,     4,     4,     2,     2,
    56,    11,     2,    27,    44,    43,     2,     2,    11,    11,
    81,     4,    11,     2,    86,    11,    66,     4,    13,    72,
     2,     2,    14,    56,     2,    15,    83,     2,    33,    34,
    35,    36,    37,    38,    61,    70,    39,    69,    32,    33,
    34,    35,    36,    37,    38,    13,    44,    43,    80,    14,
    49,    89,    15,    13,    48,    45,    46,    14,    13,    13,
    15,    85,    14,    14,    71,    15,    15,    33,    34,    35,
    36,    37,    38,    33,    34,    35,    36,    37,    38,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    18,    19,    21,    23,    25,    18,
    19,    21,    23,    25,    44,    43,    40,    41,    44,    43,
    40,    41,    40,    41,    44,    43,    44,    43,    44,    43,
    68,    31,    30,    87,    29,    88,    16,    90 ]

racc_action_check = [
    28,    28,    28,    28,    28,    28,    73,    67,    73,    67,
    71,    45,    71,    28,     7,     3,     7,     3,    73,    67,
    70,    12,    71,    12,    52,    52,     7,     3,    77,     0,
    77,     0,    82,    12,    82,    78,    48,    78,    79,    66,
    77,     0,    79,    39,    82,    79,    79,    78,    22,    22,
    22,    22,    22,    22,    42,    58,    22,    58,    22,    42,
    42,    42,    42,    42,    42,    86,    54,    54,    75,    86,
    30,    86,    86,    27,    29,    27,    27,    27,     4,    81,
    27,    81,     4,    81,    65,     4,    81,    84,    84,    84,
    84,    84,    84,    74,    74,    74,    74,    74,    74,    40,
    40,    40,    40,    40,    35,    35,    35,    35,    35,    13,
    13,    13,    13,    13,    37,    37,    37,    37,    37,    38,
    38,    38,    38,    38,    33,    33,    33,    33,    33,    34,
    34,    34,    34,    34,    41,    41,    41,    41,    41,    25,
    25,    25,    25,    25,    43,    43,    43,    43,    43,    44,
    44,    44,    44,    44,    11,    11,    11,    11,    11,    80,
    80,    80,    80,    80,    36,    36,    36,    36,    36,    68,
    68,    68,    68,    68,    55,    55,    24,    24,    53,    53,
    62,    62,    63,    63,    26,    26,    50,    50,    51,    51,
    56,    16,    15,    83,    14,    85,     6,    89 ]

racc_action_pointer = [
     8,   nil,   nil,    -6,    54,   nil,   196,    -7,   nil,   nil,
   nil,   152,     0,   107,   192,   190,   191,   nil,   nil,   nil,
   nil,   nil,    36,   nil,   168,   137,   174,    49,   -12,    45,
    45,   nil,   nil,   122,   127,   102,   162,   112,   117,    41,
    97,   132,    47,   142,   147,   -14,   nil,   nil,    34,   nil,
   176,   178,    14,   168,    56,   164,   171,   nil,    35,   nil,
   nil,   nil,   172,   174,   nil,    59,    14,   -14,   167,   nil,
    18,   -11,   nil,   -15,    81,    50,   nil,     7,    14,    14,
   157,    55,    11,   168,    75,   170,    41,   nil,   nil,   172,
   nil ]

racc_action_default = [
    -2,   -38,   -37,   -44,   -44,   -39,   -44,    -1,   -40,   -41,
   -42,   -44,   -44,   -44,   -44,   -44,   -44,   -43,    -3,    -4,
    -8,    -5,   -44,    -6,   -11,   -44,   -14,   -44,   -44,   -44,
   -44,    91,   -27,   -44,   -44,   -44,   -44,   -44,   -44,   -44,
   -44,   -44,   -44,   -44,   -44,   -44,   -31,   -29,   -44,   -35,
   -15,   -16,   -17,   -18,   -19,   -20,   -23,   -25,   -44,    -9,
   -10,    -7,   -13,   -12,   -30,   -44,   -44,   -44,   -44,   -28,
   -44,   -44,   -33,   -44,   -21,   -24,   -26,   -44,   -44,   -44,
   -44,   -44,   -44,   -44,   -22,   -44,   -44,   -36,   -32,   -44,
   -34 ]

racc_goto_table = [
     7,    57,    17,    12,    22,    75,    28,    17,    50,    51,
    52,    53,    54,    55,    62,    63,    59,    60,    42,    58,
    65,    78,    67,     6,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    76,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    74,   nil,   nil,   nil,   nil,   nil,    73,    17,   nil,
   nil,    77,    17,    84,   nil,   nil,   nil,    17,    82 ]

racc_goto_check = [
     2,     8,    18,     2,     4,     7,     4,    18,     6,     6,
     6,     6,     6,     6,     5,     5,     3,     3,     4,     9,
    13,    15,    17,     1,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,     8,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     4,   nil,   nil,   nil,   nil,   nil,     2,    18,   nil,
   nil,     2,    18,     4,   nil,   nil,   nil,    18,     2 ]

racc_goto_pointer = [
   nil,    23,     0,   -24,    -7,   -29,   -25,   -63,   -38,   -20,
   nil,   nil,   nil,   -26,   nil,   -51,   nil,   -27,    -5 ]

racc_goto_default = [
   nil,   nil,   nil,    20,   nil,    24,    26,   nil,   nil,   nil,
     1,     3,     5,   nil,     8,   nil,     9,   nil,    10 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 35, :_reduce_none,
  0, 35, :_reduce_2,
  1, 37, :_reduce_3,
  1, 37, :_reduce_4,
  1, 37, :_reduce_5,
  1, 37, :_reduce_6,
  3, 37, :_reduce_7,
  1, 39, :_reduce_none,
  3, 39, :_reduce_9,
  3, 39, :_reduce_10,
  1, 40, :_reduce_none,
  3, 40, :_reduce_12,
  3, 40, :_reduce_13,
  1, 38, :_reduce_none,
  3, 38, :_reduce_15,
  3, 38, :_reduce_16,
  3, 38, :_reduce_17,
  3, 38, :_reduce_18,
  3, 38, :_reduce_19,
  3, 38, :_reduce_20,
  1, 41, :_reduce_21,
  3, 41, :_reduce_22,
  1, 42, :_reduce_23,
  3, 42, :_reduce_24,
  1, 43, :_reduce_25,
  3, 43, :_reduce_26,
  3, 44, :_reduce_27,
  5, 44, :_reduce_28,
  4, 45, :_reduce_29,
  5, 46, :_reduce_30,
  0, 47, :_reduce_31,
  10, 46, :_reduce_32,
  0, 49, :_reduce_33,
  11, 48, :_reduce_34,
  0, 51, :_reduce_35,
  9, 50, :_reduce_36,
  1, 52, :_reduce_37,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 36, :_reduce_42,
  2, 36, :_reduce_43 ]

racc_reduce_n = 44

racc_shift_n = 91

racc_token_table = {
  false => 0,
  :error => 1,
  :IDENTIFIER => 2,
  :INTEGER => 3,
  :REAL => 4,
  :STRING => 5,
  "(" => 6,
  ")" => 7,
  "*" => 8,
  "/" => 9,
  "+" => 10,
  "-" => 11,
  :OP_EQ => 12,
  :OP_NEQ => 13,
  :OP_LEQ => 14,
  :OP_GEQ => 15,
  ">" => 16,
  "<" => 17,
  "," => 18,
  ":" => 19,
  "|" => 20,
  :VAR_OPEN => 21,
  :VAR_CLOSE => 22,
  :STMT_OPEN => 23,
  :IF => 24,
  :STMT_CLOSE => 25,
  :ENDIF => 26,
  :ELSE => 27,
  :FOR => 28,
  :IN => 29,
  :ENDFOR => 30,
  :BLOCK => 31,
  :ENDBLOCK => 32,
  :TEXT_BLOCK => 33 }

racc_nt_base = 34

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IDENTIFIER",
  "INTEGER",
  "REAL",
  "STRING",
  "\"(\"",
  "\")\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "OP_EQ",
  "OP_NEQ",
  "OP_LEQ",
  "OP_GEQ",
  "\">\"",
  "\"<\"",
  "\",\"",
  "\":\"",
  "\"|\"",
  "VAR_OPEN",
  "VAR_CLOSE",
  "STMT_OPEN",
  "IF",
  "STMT_CLOSE",
  "ENDIF",
  "ELSE",
  "FOR",
  "IN",
  "ENDFOR",
  "BLOCK",
  "ENDBLOCK",
  "TEXT_BLOCK",
  "$start",
  "target",
  "document",
  "primary_expression",
  "boolean_expression",
  "multiplicative_expression",
  "additive_expression",
  "parameter_list",
  "filter",
  "filter_list",
  "inject_statement",
  "if_statement",
  "if_block",
  "@1",
  "for_block",
  "@2",
  "block_block",
  "@3",
  "document_component" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'cadenza.y', 5)
  def _reduce_2(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 9)
  def _reduce_3(val, _values, result)
     result = VariableNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 10)
  def _reduce_4(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 11)
  def _reduce_5(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 12)
  def _reduce_6(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 13)
  def _reduce_7(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 8 omitted

module_eval(<<'.,.,', 'cadenza.y', 18)
  def _reduce_9(val, _values, result)
     result = ArithmeticNode.new(val[0], "*", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 19)
  def _reduce_10(val, _values, result)
     result = ArithmeticNode.new(val[0], "/", val[2]) 
    result
  end
.,.,

# reduce 11 omitted

module_eval(<<'.,.,', 'cadenza.y', 24)
  def _reduce_12(val, _values, result)
     result = ArithmeticNode.new(val[0], "+", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 25)
  def _reduce_13(val, _values, result)
     result = ArithmeticNode.new(val[0], "-", val[2]) 
    result
  end
.,.,

# reduce 14 omitted

module_eval(<<'.,.,', 'cadenza.y', 30)
  def _reduce_15(val, _values, result)
     result = BooleanNode.new(val[0], "==", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 31)
  def _reduce_16(val, _values, result)
     result = BooleanNode.new(val[0], "!=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 32)
  def _reduce_17(val, _values, result)
     result = BooleanNode.new(val[0], "<=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 33)
  def _reduce_18(val, _values, result)
     result = BooleanNode.new(val[0], ">=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 34)
  def _reduce_19(val, _values, result)
     result = BooleanNode.new(val[0], ">", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 35)
  def _reduce_20(val, _values, result)
     result = BooleanNode.new(val[0], "<", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 39)
  def _reduce_21(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 40)
  def _reduce_22(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 44)
  def _reduce_23(val, _values, result)
     result = FilterNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 45)
  def _reduce_24(val, _values, result)
     result = FilterNode.new(val[0].value, val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 49)
  def _reduce_25(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 50)
  def _reduce_26(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 54)
  def _reduce_27(val, _values, result)
     result = InjectNode.new(val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 55)
  def _reduce_28(val, _values, result)
     result = InjectNode.new(val[1], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 61)
  def _reduce_29(val, _values, result)
            @stack.push DocumentNode.new
        result = val[2]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 69)
  def _reduce_30(val, _values, result)
            result = IfNode.new(val[0], @stack.pop.children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 72)
  def _reduce_31(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 75)
  def _reduce_32(val, _values, result)
            false_children, true_children = @stack.pop.children, @stack.pop.children
        result = IfNode.new(val[0], true_children, false_children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 82)
  def _reduce_33(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 86)
  def _reduce_34(val, _values, result)
            iterator = VariableNode.new(val[2].value)
        iterable = VariableNode.new(val[4].value)
        
        result = ForNode.new(iterator, iterable, @stack.pop.children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 95)
  def _reduce_35(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 98)
  def _reduce_36(val, _values, result)
     result = BlockNode.new(val[2].value, @stack.pop.children) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 102)
  def _reduce_37(val, _values, result)
     result = TextNode.new(val[0].value) 
    result
  end
.,.,

# reduce 38 omitted

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

module_eval(<<'.,.,', 'cadenza.y', 110)
  def _reduce_42(val, _values, result)
     push_child val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 111)
  def _reduce_43(val, _values, result)
     push_child val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Cadenza
