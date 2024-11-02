data modify storage ntils:api singularity.data append value {\
    id:"ntils:time",\
    version:1,\
    display:{desc:"Time module.",name:"Time"},\
    dependency:[\
        {id:"ntils:lookups",version:{min:2}},\
        {id:"ntils:b64",version:{min:1}},\
        {id:"ntils:string",version:{min:1}},\
    ]\
}