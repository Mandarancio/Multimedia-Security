## Copyright (C) 2017 Martino
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} BlockLoss (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Martino <martino@martino-Link>
## Created: 2017-03-22

function [ii] = BlockLoss (i,N, M)
  ii = i;
  si = size(i);
  b = zeros(N,M);
  x = randi(si(1)-N);
  y = randi(si(2)-M);
  ii(x:x+N-1,y:y+M-1)=b;
endfunction
