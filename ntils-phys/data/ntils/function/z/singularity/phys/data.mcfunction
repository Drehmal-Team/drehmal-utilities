data modify storage ntils:api singularity.data append value {\
    id:"ntils:phys",\
    version:1,\
    display:{desc:"A primitive rigid-body physics simulation module.",name:"Physics"},\
    dependency:[\
        {id:"ntils:math",version:{min:1}},\
    ]\
}