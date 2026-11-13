(module name: (_) @name) @def.module
(class name: (_) @name) @def.class
(singleton_class value: (_) @name) @def.class
(method name: (_) @name parameters: (method_parameters) @detail) @def.method
(method name: (_) @name) @def.method
(singleton_method object: (_) @_o name: (_) @name) @def.method
(assignment left: (constant) @name) @def.constant
(call
  method: (identifier) @_m
  arguments: (argument_list . (simple_symbol) @name)
  (#any-of? @_m "attr_accessor" "attr_reader" "attr_writer")) @def.property
(call
  method: (identifier) @_m
  arguments: (argument_list . (simple_symbol) @name)
  (#any-of? @_m "has_many" "has_one" "belongs_to" "has_and_belongs_to_many")) @def.property
(call
  method: (identifier) @_m
  arguments: (argument_list . (simple_symbol) @name)
  (#eq? @_m "scope")) @def.method
