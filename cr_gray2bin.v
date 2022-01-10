// SPDX-License-Identifier: Apache-2.0
/*
 * Copyright 2021, Luke E. McKay.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/** Gray Code to Binary Conversion
 *  Version 0.1.1
 */
module cr_gray2bin
#(
  parameter pWidth = 1   //!< Datapath Width
)(
  //# {{}}

  //# {{}}
  input  wire [pWidth-1:0] G,  //!< Gray Code Input
  output wire [pWidth-1:0] B   //!< Binary Output
);

generate
  if (pWidth < 2)
  begin
    cr_gray2bin_ERROR_invalid_pWidth invalid_pWidth();  // @toTest
  end  // @todo need to make sure that it is only power of 2, not just >2
endgenerate

genvar i;

generate
  for (i=0; i<pWidth; i=i+1)
  begin
    assign B[i] = ^ G[pWidth-1:i];
  end
endgenerate

endmodule
