module PythonCall

using Base: Core
using MacroTools

include("utils.jl")

include("cpython/CPython.jl")

include("Py.jl")
include("err.jl")
include("config.jl")
include("convert.jl")
# abstract interfaces
include("abstract/object.jl")
include("abstract/iter.jl")
include("abstract/number.jl")
# concrete types
include("concrete/import.jl")
include("concrete/consts.jl")
include("concrete/str.jl")
include("concrete/bytes.jl")
include("concrete/tuple.jl")
include("concrete/list.jl")
include("concrete/dict.jl")
include("concrete/bool.jl")
include("concrete/int.jl")
include("concrete/float.jl")
include("concrete/complex.jl")
include("concrete/set.jl")
include("concrete/slice.jl")
include("concrete/range.jl")
include("concrete/none.jl")
include("concrete/type.jl")
# jlwrap
include("jlwrap/base.jl")
include("jlwrap/raw.jl")
include("jlwrap/any.jl")
include("jlwrap/module.jl")
include("jlwrap/type.jl")
include("jlwrap/iter.jl")
# misc
include("with.jl")
include("multimedia.jl")
include("pyconst_macro.jl")
include("py_macro.jl")
include("juliacall.jl")

function __init__()
    init_consts()
    init_pyconvert()
    init_juliacall()
    init_jlwrap_base()
    init_jlwrap_raw()
    init_jlwrap_any()
    init_jlwrap_module()
    init_jlwrap_type()
    init_jlwrap_iter()
    init_juliacall_2()
end

end
