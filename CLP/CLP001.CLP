  /*--------------------------------------------------------------------------*/                  
  /* Program Name  : CLP001                                                   */                  
  /* Author  Name  :                                                          */                  
  /* Creation Date :                                                          */                  
  /* Description   : Read database file without using goto command            */                  
  /*--------------------------------------------------------------------------*/                  
     PGM                                                                                          
             DCLF       FILE(NIKESHM1/CUST)                                                       
             DCL        VAR(&LOOP) TYPE(*LGL) VALUE('1')                                          
                                                                                                  
             DOWHILE    COND(&LOOP)                                                               
             RCVF                                                                                 
             MONMSG     MSGID(CPF0864) EXEC(LEAVE)                                                
             SNDPGMMSG  MSG(&CID)                                                                 
             SNDPGMMSG  MSG(&CNAME)                                                               
             ENDDO                                                                                
                                                                                                  
     ENDPGM                                                                                       