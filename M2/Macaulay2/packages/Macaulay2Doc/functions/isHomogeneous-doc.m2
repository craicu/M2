--- status: DRAFT
--- author(s): MES
--- notes: 

undocumented {(isHomogeneous,EngineRing)}

document { 
     Key => {isHomogeneous,
	  (isHomogeneous,Ring),
	  (isHomogeneous,ChainComplexMap),
	  (isHomogeneous,Matrix),
	  (isHomogeneous,RingElement),
	  (isHomogeneous,Module),
	  (isHomogeneous,ChainComplex),
	  (isHomogeneous,RingMap),
	  (isHomogeneous,Vector),
	  (isHomogeneous,Ideal)},
     Headline => "whether something is homogeneous (graded)",
     Usage => "isHomogeneous x",
     Inputs => {
	  "x" => {"a ", TO Ring, ", ",
	       TO RingElement, ", ",
	       TO Vector, ", ",
	       TO Matrix, ", ",
	       TO Ideal, ", ",
	       TO Module, ", ",
	       TO RingMap, ", ",
	       TO ChainComplex, ", or ",
	       TO ChainComplexMap}
	  },
     Outputs => {
	  Boolean => {"whether ", TT "x", " is homogeneous."}
	  },
     EXAMPLE {
	  "isHomogeneous(ZZ)",
	  "isHomogeneous(ZZ[x])",
	  "isHomogeneous(ZZ[x]/(x^3-x-3))"
	  },
     PARA{},
     "Rings may be graded, with generators having degree 0.  For example,
     in the ring B below, every element of A has degree 0.",
     EXAMPLE {
	  "A = QQ[a,b,c];",
	  "B = A[x,y];",
	  "isHomogeneous B",
	  "isHomogeneous ideal(a*x+y,y^3-b*x^2*y)"
	  },
     PARA{},
     "Quotients of multigraded rings are homogeneous, if the ideal is also multigraded.",
     EXAMPLE {
          "R = QQ[a,b,c,Degrees=>{{1,1},{1,0},{0,1}}];",
	  "I = ideal(a-b*c);",
	  "isHomogeneous I",
	  "isHomogeneous(R/I)",
	  "isHomogeneous(R/(a-b))"
	  },
     PARA{},
     "A matrix is homogeneous if each entry is homogeneous of such a degree
     so that the matrix has a well-defined degree.",
     EXAMPLE {
	  "S = QQ[a,b];",
	  "F = S^{-1,2}",
     	  "isHomogeneous F",
	  "G = S^{1,2}",
	  "phi = random(G,F)",
	  "isHomogeneous phi",
	  "degree phi"
	  },
     PARA{},
     "Modules are homogeneous if their generator and relation matrices are homogeneous.",
     EXAMPLE {
	  "M = coker phi",
	  "isHomogeneous(a*M)",
     	  "isHomogeneous((a+1)*M)"
	  },
     SeeAlso => {degree, "graded and multigraded polynomial rings"}
     }

TEST ///
isHomogeneous (ZZ/7)
isHomogeneous (ZZ/7[x])
isHomogeneous (ZZ/7[x]/(x^2-1))
isHomogeneous ZZ
A = QQ[a,b,c]
B = A[x,y]
isHomogeneous B
isHomogeneous ideal(a*x+y,y^3-b*x^2*y)
///
