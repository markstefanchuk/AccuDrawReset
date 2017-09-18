/*----------------------------------------------------------------------+
|																		|
| name		adrstxm.mc 													|
|																		|
| Date:		2008														|
|																		|
|																		|
| Copyright (c) 2008 - 2017, The Phocaz Group, LLC  					|
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
|   Neither name of The Phocaz Group, LLC nor the names of its  			|
|   contributors may be used to endorse or promote products derived from|
|   this software without specific prior written permission.			|
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
#include    <mdl.h>
#include    <tcb.h>
#include    <dlogitem.h>
#include    <dlogids.h>
#include    <rscdefs.h>
#include    <mdlerrs.h>
#include    <userfnc.h>
#include    <global.h>
#include    <mselems.h>
#include    <accudraw.h>
#include    <cexpr.h>
#include    <math.h>

#include    "adrstxmcmd.h"
#include    "adrstxm.h"
#include    "fdf.fdf"

int refDialogIsOpen;

void adrst_newFile
(
char *filenameP,
int  state
);

/*----------------------------------------------------------------------+
|																		|
| name		monitorQueue                      							|
|																		|
| author	BSI     										9/90		|
|																		|
|	monitorQueue is an example of a input-monitor user function.    	|
|																		|
|																		|
+----------------------------------------------------------------------*/
Private int monitorQueue
(
Inputq_element	*queueElementP
)
{
	if (queueElementP->hdr.cmdtype == RESET)
	   mdlInput_sendKeyin ("mdl keyin accudraw accudraw dialog", 0, 0, NULL);

    return INPUT_ACCEPT;
}

/*----------------------------------------------------------------------+
|																		|
| name		main		 												|
|																		|
+----------------------------------------------------------------------*/
int main ()
{
    RscFileHandle   rfHandle;

    mdlResource_openFile (&rfHandle, NULL, FALSE);

    if (mdlParse_loadCommandTable (NULL) == NULL)
	mdlOutput_rscPrintf (MSG_ERROR, NULL, 0, 4);

    mdlInput_setMonitorFunction (MONITOR_ALL, monitorQueue);
     
    return  SUCCESS;
}
