## cr_gray2bin - Gray Code to Binary Conversion

*Collective RTL Library - Building Blocks Core*

-----
### Overview

This module provides a method to convert a Gray code input into a standard
binary number output. Gray codes are non-weighted codes, where two successive
values differ only on one bit. 

#### Version

0.1.1_pre-alpha

##### History

- 31DEC21 - Created
- 09JAN22 - Add compile time parameter check, update documentation

#### Features

- Parameterized code width

#### Parameters

- pWidth  - *Datapath Width, RAM Word Width*

#### Ports

- G  - *Gray Code Input*
- B  - *Binary Code Output*

#### Related Module(s)

The cr_bin2gray module performs the inverse function of this module.

-----
### Theory of Operation

#### Patents

[US785697A](https://patents.google.com/patent/US2632058A/en)
Inventor: Frank Gray @ AT&T Corp. **Expired**

#### Functional Description

This module provides a simple conversion from a Standard Reflected Binary Gray
code to a standard binary number. A Gray code representation is where for any integer X the bit representation is Hamming distance 1 away from the bit
represenation of X+1 as well as from X-1.

This module (and all SRBG codes) conversion only works for widths that are
powers of 2.

The binary number for a Reflected Binary Gray code can be given by:

> B<sub>n</sub> = G<sub>n</sub>
>
> B<sub>(n-1)</sub> = G<sub>(n-1)</sub>⊕G<sub>n</sub>
>
> B<sub>1</sub> = G<sub>1</sub>⊕G<sub>2</sub>⊕G<sub>3</sub>...⊕G<sub>n</sub>
>
> B<sub>0</sub>=G<sub>0</sub>⊕G<sub>1</sub>⊕G<sub>2</sub>⊕G<sub>3</sub>...⊕G<sub>n</sub>

The module inputs and outputs are unregistered.

-----
### Verification / Simulation

Verification / simulation of the core is in a different repo. Testing of this
module is shared with the testing of the related module cr_bin2gray. Note that
the 'test' repo is under a different license.

The repo is: cr_bin2gray_test **@todo**

### Proof

The simulation of the module only tests a few possible instantiations of the
module. The algorithm used is proved in several papers that are available with
a simple search. The earlier referenced expired patent also provides additional
information.

-----
### Copyright & License

```
Copyright 2021, Luke E. McKay.
SPDX-License-Identifier: Apache-2.0
```

-----
### Technical Support & Feedback

To obtain technical support, create an issue at the GitHub repository for this
project. The issue process will address reported bugs, questions, and any other
feedback via the repository issues at the GitHub repo.

Technical support for use of this core assumes the core is being used according
to the guidelines described in the core documentation. Please reference the
included documentation before creating an issue.
