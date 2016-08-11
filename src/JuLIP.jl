
# JuLIP.jl master file.

module JuLIP

export Atoms

# TODO: correctly use import versus using throughout this package! 

# quickly switch between Matrices and Vectors of Vecs
include("arrayconversions.jl")

# define types and abstractions of generic functions
include("abstractions.jl")

# a few auxiliary routines
include("utils.jl")

# implementation of some key functionality via ASE
include("ASE.jl")


# define the default atoms object
"""
`type Atoms`

Technically not a type but a type-alias, to possibly allow different "backends".
At the moment, `Atoms = ASE.ASEAtoms`; see its help for more details.
This will likely remain for the foreseeable future.
"""
typealias Atoms ASE.ASEAtoms


# submodule JuLIP.Constraints
include("Constraints.jl")

# interatomic potentials prototypes and some example implementations
include("Potentials.jl")

# basic preconditioning capabilities
include("preconditioners.jl")

# some solvers
include("Solve.jl")

# codes to facilitate testing
include("Testing.jl")


end # module
