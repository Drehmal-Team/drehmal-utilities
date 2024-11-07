data modify storage ntils:api singularity.data append value {\
    id:"ntils:player",\
    version:1,\
    display:{desc:"Player module.",name:"Player"},\
    dependency:[\
        {id:"ntils:uuid",version:{min:1}},\
        {id:"ntils:lookups",version:{min:3}},\
    ]\
}