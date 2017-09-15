/*----------------------------------------------------------------------+
|																		|
| name		adrstv8icmd.r 												|
|																		|
| Date:		2010														|
|																		|
|																		|
| Copyright (c) 1998-2017, Mark Stefanchuk, The Phocaz Group, LLC    	|
| All rights reserved.													|
|																		|
| Redistribution and use in source and binary forms, with or without 	|
| modification, are permitted provided that the following conditions 	|
| are met:																|
|         																|
|   Redistribution of source code must retain the above copyright 		|
|   notice, this list of conditions and the following disclaimer. 		|
|              															|
|   Redistribution in binary form must reproduce the above copyright 	|
|   notice, this list of conditions and the following disclaimer in 	|
|   the documentation and/or other materials provided with the 			|
|   distribution.														|
|           															|
|   Neither name of Mark Stefanchuk, CAD Management Resources nor the	| 
|   names of its contributors may be used to endorse or promote			|
|   products derived from this software without specific prior          |
|   written permission.													|
|            															|
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 	|
| "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT 		|
| NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS |
| FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS| 
| OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 		|
| SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 		|
| LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF 		|
| USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 		|
| AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,| 
| OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT 	|
| OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 		|
| OF SUCH DAMAGE.														|
|          																|
|																		|
|																		|
+----------------------------------------------------------------------*/

#include <rscdefs.h>
#include <cmdclass.h>

#define	CT_NONE		 0
#define CT_ADR  	 1

Table	CT_ADR =
	{
	{ 1, 	CT_NONE,	INHERIT,	NONE,	"ADRESET"}
	};