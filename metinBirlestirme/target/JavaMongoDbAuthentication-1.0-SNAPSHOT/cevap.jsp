<%-- 
    Document   : cevap
    Created on : 26 Mar 2023, 21:48:36
    Author     : alica
--%>


<link href="css/style.css" rel="stylesheet" type="text/css"/>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"
           

   %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
 
    <h4>CÜMLELERİN BİRLEŞTİRİLMİŞ HALİ;</h4>
    <jsp:useBean id="ilkCekirdek" scope="session" class="veri.Birlestir" />
    <jsp:setProperty name="ilkCekirdek" property="metin1" />
    <jsp:setProperty name="ilkCekirdek" property="metin2" />
    <jsp:setProperty name="ilkCekirdek" property="metin3" />
    <jsp:setProperty name="ilkCekirdek" property="metin4" />
    <jsp:setProperty name="ilkCekirdek" property="metin5" />
    <jsp:setProperty name="ilkCekirdek" property="metin6" />
    <jsp:setProperty name="ilkCekirdek" property="metin7" />
    <jsp:setProperty name="ilkCekirdek" property="metin8" />
    <jsp:setProperty name="ilkCekirdek" property="metin9" />
    <jsp:setProperty name="ilkCekirdek" property="metin10" />
    <% 
            
       
        String birlesim = "";
        long startTime = System.nanoTime(); //başlangıç zamanı.
        boolean sayi= true;
        boolean sayi1= true;
        boolean sayi2= true;
        boolean sayi3= true;
        boolean sayi4= true;
        boolean sayi5= true;
        boolean sayi6= true;
        boolean sayi7= true;
        boolean sayi8= true;
        boolean kelime = false ;
        boolean kelime1 = false ;
        boolean kelime2 = false ;
        boolean kelime3 = false ;
        boolean kelime4 = false ;
        boolean kelime5 = false ;
        boolean kelime6 = false ;
        boolean kelime7 = false ;
        boolean kelime8 = false ;
        String ilkCumle = request.getParameter("metin1");
        String ikinciCumle = request.getParameter("metin2");
        String ucuncuCumle = request.getParameter("metin3");
        String dorduncuCumle = request.getParameter("metin4");
        String besinciCumle = request.getParameter("metin5");
        String altinciCumle = request.getParameter("metin6");
        String yedinciCumle = request.getParameter("metin7");
        String sekizinciCumle = request.getParameter("metin8");
        String dokuzuncuCumle = request.getParameter("metin9");
        String onuncuCumle = request.getParameter("metin10");
        
        String[] ilkAyrim = ilkCumle.split(" ");
        String[] ikinciAyrim = ikinciCumle.split(" ");
        String[] ucuncuAyrim = ucuncuCumle.split(" ");
        String[] dorduncuAyrim = dorduncuCumle.split(" ");
        String[] besinciAyrim = besinciCumle.split(" ");
        String[] altinciAyrim = altinciCumle.split(" ");
        String[] yedinciAyrim = yedinciCumle.split(" ");
        String[] sekizinciAyrim = sekizinciCumle.split(" ");
        String[] dokuzuncuAyrim = dokuzuncuCumle.split(" ");
        String[] onuncuAyrim = onuncuCumle.split(" ");
        
           
    
       
        if(ikinciCumle.isEmpty()){
                //ilk cümle son kelimesi hariç
                for(int j=0;j<ilkAyrim.length;j++){ 
                    out.print(ilkAyrim[j] + " ");
                    birlesim = birlesim + ilkAyrim[j] + " ";
                        }
            }
        if(!ikinciCumle.isEmpty()){
            kelime = ikinciCumle.contains(ilkAyrim[ilkAyrim.length-1]); //ali eve gel   geliyor kosarak   cay ıc
            if(kelime){
                    for(int j=0;j<ilkAyrim.length-1;j++){
                        out.print(ilkAyrim[j] + " ");
                        birlesim = birlesim + ilkAyrim[j] + " ";
                        }
            }else{
                    for(int j=0;j<ilkAyrim.length;j++){
                        out.print(ilkAyrim[j] + " ");
                        birlesim = birlesim + ilkAyrim[j] + " ";
                        }
            }
            }
        //------------------
        if(!ucuncuCumle.isEmpty()){
            kelime1 = ucuncuCumle.contains(ikinciAyrim[ikinciAyrim.length-1]);
            for(int i=0;i<ikinciAyrim.length;i++){
                if(ikinciAyrim[i].equals(ilkAyrim[ilkAyrim.length-1])){ 
                    out.print(ikinciAyrim[i] + " ");
                    birlesim = birlesim + ikinciAyrim[i] + " ";
                    i = i + 1;
                    sayi = false;
                    if(kelime1){
                        while(i<ikinciAyrim.length-1){
                            out.print(ikinciAyrim[i] + " ");
                            birlesim = birlesim + ikinciAyrim[i] + " ";
                            i = i +1;
                                    }
                    }else{
                        while(i<ikinciAyrim.length){
                            out.print(ikinciAyrim[i] + " ");
                            birlesim = birlesim + ikinciAyrim[i] + " ";
                            i = i +1;
                                    }
                    }
                    
                                                                        }
                }
                if(sayi){
                          // 2. cumlenın son kelimesi
                        if(kelime1){
                                for(int k=0;k<ikinciAyrim.length-1;k++){
                                out.print(ikinciAyrim[k] + " ");
                                birlesim = birlesim + ikinciAyrim[k] + " ";
                                    }
                                    }
                                    else{
                                            for(int k=0;k<ikinciAyrim.length;k++){
                                                    out.print(ikinciAyrim[k] + " ");
                                                    birlesim = birlesim + ikinciAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(ucuncuCumle.isEmpty()){
                for(int i=0;i<ikinciAyrim.length;i++){
                if(ikinciAyrim[i].equals(ilkAyrim[ilkAyrim.length-1])){ 
                    out.print(ikinciAyrim[i] + " ");
                    birlesim = birlesim + ikinciAyrim[i] + " ";
                    i = i + 1;
                    sayi = false;
                    while(i<ikinciAyrim.length){
                            out.print(ikinciAyrim[i] + " ");
                            birlesim = birlesim + ikinciAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi){
                        for(int k=0;k<ikinciAyrim.length;k++){
                                out.print(ikinciAyrim[k] + " ");
                                birlesim = birlesim + ikinciAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
     //-------------
        if(!dorduncuCumle.isEmpty()){
            kelime2 = dorduncuCumle.contains(ucuncuAyrim[ucuncuAyrim.length-1]);
            for(int i=0;i<ucuncuAyrim.length;i++){
                if(ucuncuAyrim[i].equals(ikinciAyrim[ikinciAyrim.length-1])){ 
                    out.print(ucuncuAyrim[i] + " ");
                    birlesim = birlesim + ucuncuAyrim[i] + " ";
                    i = i + 1;
                    sayi1 = false;
                    if(kelime2){
                        while(i<ucuncuAyrim.length-1){
                            out.print(ucuncuAyrim[i] + " ");
                            birlesim = birlesim + ucuncuAyrim[i] + " ";
                            i = i +1;
                                    }
                    }else{
                            while(i<ucuncuAyrim.length){
                            out.print(ucuncuAyrim[i] + " ");
                            birlesim = birlesim + ucuncuAyrim[i] + " ";
                            i = i +1;
                                    }
                        }
                    
                }
                }
                if(sayi1){
                          // 2. cumlenın son kelimesi
                        if(kelime2){
                                for(int k=0;k<ucuncuAyrim.length-1;k++){
                                out.print(ucuncuAyrim[k] + " ");
                                birlesim = birlesim + ucuncuAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<ucuncuAyrim.length;k++){
                                                    out.print(ucuncuAyrim[k] + " ");
                                                    birlesim = birlesim + ucuncuAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(dorduncuCumle.isEmpty()){
                for(int i=0;i<ucuncuAyrim.length;i++){
                if(ucuncuAyrim[i].equals(ikinciAyrim[ikinciAyrim.length-1])){ 
                    out.print(ucuncuAyrim[i] + " ");
                    birlesim = birlesim + ucuncuAyrim[i] + " ";
                    i = i + 1;
                    sayi1 = false;
                    while(i<ucuncuAyrim.length){
                            out.print(ucuncuAyrim[i] + " ");
                            birlesim = birlesim + ucuncuAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi1){
                        for(int k=0;k<ucuncuAyrim.length;k++){
                                out.print(ucuncuAyrim[k] + " ");
                                birlesim = birlesim + ucuncuAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //------------------------------------------
            if(!besinciCumle.isEmpty()){
            kelime3 = besinciCumle.contains(dorduncuAyrim[dorduncuAyrim.length-1]);
            for(int i=0;i<dorduncuAyrim.length;i++){
                if(dorduncuAyrim[i].equals(ucuncuAyrim[ucuncuAyrim.length-1])){ 
                    out.print(dorduncuAyrim[i] + " ");
                    birlesim = birlesim + dorduncuAyrim[i] + " ";
                    i = i + 1;
                    sayi2 = false;
                    if(kelime3){
                            while(i<dorduncuAyrim.length-1){
                            out.print(dorduncuAyrim[i] + " ");
                            birlesim = birlesim + dorduncuAyrim[i] + " ";
                            i = i +1;
                                    }
                    }else{
                            while(i<dorduncuAyrim.length){
                            out.print(dorduncuAyrim[i] + " ");
                            birlesim = birlesim + dorduncuAyrim[i] + " ";
                            i = i +1;
                                    }
                        }
                    
                }
                }
                if(sayi2){
                          // 2. cumlenın son kelimesi
                        if(kelime3){
                                for(int k=0;k<dorduncuAyrim.length-1;k++){
                                out.print(dorduncuAyrim[k] + " ");
                                birlesim = birlesim + dorduncuAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<dorduncuAyrim.length;k++){
                                                    out.print(dorduncuAyrim[k] + " ");
                                                    birlesim = birlesim + dorduncuAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(besinciCumle.isEmpty()){
                for(int i=0;i<dorduncuAyrim.length;i++){
                if(dorduncuAyrim[i].equals(ucuncuAyrim[ucuncuAyrim.length-1])){ 
                    out.print(dorduncuAyrim[i] + " ");
                    birlesim = birlesim + dorduncuAyrim[i] + " ";
                    i = i + 1;
                    sayi2 = false;
                    while(i<dorduncuAyrim.length){
                            out.print(dorduncuAyrim[i] + " ");
                            birlesim = birlesim + dorduncuAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi2){
                        for(int k=0;k<dorduncuAyrim.length;k++){
                                out.print(dorduncuAyrim[k] + " ");
                                birlesim = birlesim + dorduncuAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //-------------------------------------------------------
        if(!altinciCumle.isEmpty()){
            kelime4 = altinciCumle.contains(besinciAyrim[besinciAyrim.length-1]);
            for(int i=0;i<besinciAyrim.length;i++){
                if(besinciAyrim[i].equals(dorduncuAyrim[dorduncuAyrim.length-1])){ 
                    out.print(besinciAyrim[i] + " ");
                    birlesim = birlesim + besinciAyrim[i] + " ";
                    i = i + 1;
                    sayi3 = false;
                    if(kelime4){
                            while(i<besinciAyrim.length-1){
                            out.print(besinciAyrim[i] + " ");
                            birlesim = birlesim + besinciAyrim[i] + " ";
                            i = i +1;
                                    }
                        }else{
                                while(i<besinciAyrim.length){
                            out.print(besinciAyrim[i] + " ");
                            birlesim = birlesim + besinciAyrim[i] + " ";
                            i = i +1;
                                    }
                            }
                    
                }
                }
                if(sayi3){
                          // 2. cumlenın son kelimesi
                        if(kelime4){
                                for(int k=0;k<besinciAyrim.length-1;k++){
                                out.print(besinciAyrim[k] + " ");
                                birlesim = birlesim + besinciAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<besinciAyrim.length;k++){
                                                    out.print(besinciAyrim[k] + " ");
                                                    birlesim = birlesim + besinciAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(altinciCumle.isEmpty()){
                for(int i=0;i<besinciAyrim.length;i++){
                if(besinciAyrim[i].equals(dorduncuAyrim[dorduncuAyrim.length-1])){ 
                    out.print(besinciAyrim[i] + " ");
                    birlesim = birlesim + besinciAyrim[i] + " ";
                    i = i + 1;
                    sayi3 = false;
                    while(i<besinciAyrim.length){
                            out.print(besinciAyrim[i] + " ");
                            birlesim = birlesim + besinciAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi3){
                        for(int k=0;k<besinciAyrim.length;k++){
                                out.print(besinciAyrim[k] + " ");
                                birlesim = birlesim + besinciAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //-----------------------------------------------------------------------------
        if(!yedinciCumle.isEmpty()){
            kelime5 = yedinciCumle.contains(altinciAyrim[altinciAyrim.length-1]);
            for(int i=0;i<altinciAyrim.length;i++){
                if(altinciAyrim[i].equals(besinciAyrim[besinciAyrim.length-1])){ 
                    out.print(altinciAyrim[i] + " ");
                    birlesim = birlesim + altinciAyrim[i] + " ";
                    i = i + 1;
                    sayi4 = false;
                    if(kelime5){
                         while(i<altinciAyrim.length-1){
                            out.print(altinciAyrim[i] + " ");
                            birlesim = birlesim + altinciAyrim[i] + " ";
                            i = i +1;
                                    }
                    }else{
                        while(i<altinciAyrim.length){
                            out.print(altinciAyrim[i] + " ");
                            birlesim = birlesim + altinciAyrim[i] + " ";
                            i = i +1;
                                    }
                    }
                   
                }
                }
                if(sayi4){
                          // 2. cumlenın son kelimesi
                        if(kelime5){
                                for(int k=0;k<altinciAyrim.length-1;k++){
                                out.print(altinciAyrim[k] + " ");
                                birlesim = birlesim + altinciAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<altinciAyrim.length;k++){
                                                    out.print(altinciAyrim[k] + " ");
                                                    birlesim = birlesim + altinciAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(yedinciCumle.isEmpty()){
                for(int i=0;i<altinciAyrim.length;i++){
                if(altinciAyrim[i].equals(besinciAyrim[besinciAyrim.length-1])){ 
                    out.print(altinciAyrim[i] + " ");
                    birlesim = birlesim + altinciAyrim[i] + " ";
                    i = i + 1;
                    sayi4 = false;
                    while(i<altinciAyrim.length){
                            out.print(altinciAyrim[i] + " ");
                            birlesim = birlesim + altinciAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi4){
                        for(int k=0;k<altinciAyrim.length;k++){
                                out.print(altinciAyrim[k] + " ");
                                birlesim = birlesim + altinciAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //---------------------------------------------------------------------------------
        if(!sekizinciCumle.isEmpty()){
            kelime6 = sekizinciCumle.contains(yedinciAyrim[yedinciAyrim.length-1]);
            for(int i=0;i<yedinciAyrim.length;i++){
                if(yedinciAyrim[i].equals(altinciAyrim[altinciAyrim.length-1])){ 
                    out.print(yedinciAyrim[i] + " ");
                    birlesim = birlesim + yedinciAyrim[i] + " ";
                    i = i + 1;
                    sayi5 = false;
                    if(kelime6){
                            while(i<yedinciAyrim.length-1){
                            out.print(yedinciAyrim[i] + " ");
                            birlesim = birlesim + yedinciAyrim[i] + " ";
                            i = i +1;
                                    }
                        }else{
                                while(i<yedinciAyrim.length){
                            out.print(yedinciAyrim[i] + " ");
                            birlesim = birlesim + yedinciAyrim[i] + " ";
                            i = i +1;
                                    }
                            }
                    
                }
                }
                if(sayi5){
                          // 2. cumlenın son kelimesi
                        if(kelime6){
                                for(int k=0;k<yedinciAyrim.length-1;k++){
                                out.print(yedinciAyrim[k] + " ");
                                birlesim = birlesim + yedinciAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<yedinciAyrim.length;k++){
                                                    out.print(yedinciAyrim[k] + " ");
                                                    birlesim = birlesim + yedinciAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(sekizinciCumle.isEmpty()){
                for(int i=0;i<yedinciAyrim.length;i++){
                if(yedinciAyrim[i].equals(altinciAyrim[altinciAyrim.length-1])){ 
                    out.print(yedinciAyrim[i] + " ");
                    birlesim = birlesim + yedinciAyrim[i] + " ";
                    i = i + 1;
                    sayi5 = false;
                    while(i<yedinciAyrim.length){
                            out.print(yedinciAyrim[i] + " ");
                            birlesim = birlesim + yedinciAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi5){
                        for(int k=0;k<yedinciAyrim.length;k++){
                                out.print(yedinciAyrim[k] + " ");
                                birlesim = birlesim + yedinciAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //----------------------------------------------------------------------------
        if(!dokuzuncuCumle.isEmpty()){
            kelime7 = dokuzuncuCumle.contains(sekizinciAyrim[sekizinciAyrim.length-1]);
            for(int i=0;i<sekizinciAyrim.length;i++){
                if(sekizinciAyrim[i].equals(yedinciAyrim[yedinciAyrim.length-1])){ 
                    out.print(sekizinciAyrim[i] + " ");
                    birlesim = birlesim + sekizinciAyrim[i] + " ";
                    i = i + 1;
                    sayi6 = false;
                    if(kelime7){
                            while(i<sekizinciAyrim.length-1){
                            out.print(sekizinciAyrim[i] + " ");
                            birlesim = birlesim + sekizinciAyrim[i] + " ";
                            i = i +1;
                                    }
                        }else{
                                while(i<sekizinciAyrim.length){
                            out.print(sekizinciAyrim[i] + " ");
                            birlesim = birlesim + sekizinciAyrim[i] + " ";
                            i = i +1;
                                    }
                        }
                    
                }
                }
                if(sayi6){
                          // 2. cumlenın son kelimesi
                        if(kelime7){
                                for(int k=0;k<sekizinciAyrim.length-1;k++){
                                out.print(sekizinciAyrim[k] + " ");
                                birlesim = birlesim + sekizinciAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<sekizinciAyrim.length;k++){
                                                    out.print(sekizinciAyrim[k] + " ");
                                                    birlesim = birlesim + sekizinciAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(dokuzuncuCumle.isEmpty()){
                for(int i=0;i<sekizinciAyrim.length;i++){
                if(sekizinciAyrim[i].equals(yedinciAyrim[yedinciAyrim.length-1])){ 
                    out.print(sekizinciAyrim[i] + " ");
                    birlesim = birlesim + sekizinciAyrim[i] + " ";
                    i = i + 1;
                    sayi6 = false;
                    while(i<sekizinciAyrim.length){
                            out.print(sekizinciAyrim[i] + " ");
                            birlesim = birlesim + sekizinciAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi6){
                        for(int k=0;k<sekizinciAyrim.length;k++){
                                out.print(sekizinciAyrim[k] + " ");
                                birlesim = birlesim + sekizinciAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //----------------------------------------------------------------------------
        if(!onuncuCumle.isEmpty()){
            kelime8 = onuncuCumle.contains(dokuzuncuAyrim[dokuzuncuAyrim.length-1]);
            for(int i=0;i<dokuzuncuAyrim.length;i++){
                if(dokuzuncuAyrim[i].equals(sekizinciAyrim[sekizinciAyrim.length-1])){ 
                    out.print(dokuzuncuAyrim[i] + " ");
                    birlesim = birlesim + dokuzuncuAyrim[i] + " ";
                    i = i + 1;
                    sayi7 = false;
                    if(kelime8){
                                while(i<dokuzuncuAyrim.length-1){
                            out.print(dokuzuncuAyrim[i] + " ");
                            birlesim = birlesim + dokuzuncuAyrim[i] + " ";
                            i = i +1;
                                    }
                            }else{
                                while(i<dokuzuncuAyrim.length){
                            out.print(dokuzuncuAyrim[i] + " ");
                            birlesim = birlesim + dokuzuncuAyrim[i] + " ";
                            i = i +1;
                                    }
                            }
                    
                }
                }
                if(sayi7){
                          // 2. cumlenın son kelimesi
                        if(kelime8){
                                for(int k=0;k<dokuzuncuAyrim.length-1;k++){
                                out.print(dokuzuncuAyrim[k] + " ");
                                birlesim = birlesim + dokuzuncuAyrim[k] + " ";
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<dokuzuncuAyrim.length;k++){
                                                    out.print(dokuzuncuAyrim[k] + " ");
                                                    birlesim = birlesim + dokuzuncuAyrim[k] + " ";
                        
                                    }
                                            }
                        
                        }
        }
        if(onuncuCumle.isEmpty()){
                for(int i=0;i<dokuzuncuAyrim.length;i++){
                if(dokuzuncuAyrim[i].equals(sekizinciAyrim[sekizinciAyrim.length-1])){ 
                    out.print(dokuzuncuAyrim[i] + " ");
                    birlesim = birlesim + dokuzuncuAyrim[i] + " ";
                    i = i + 1;
                    sayi7 = false;
                    while(i<dokuzuncuAyrim.length){
                            out.print(dokuzuncuAyrim[i] + " ");
                            birlesim = birlesim + dokuzuncuAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi7){
                        for(int k=0;k<dokuzuncuAyrim.length;k++){
                                out.print(dokuzuncuAyrim[k] + " ");
                                birlesim = birlesim + dokuzuncuAyrim[k] + " ";
                        
                                                                }
                        }
                                    }
        //--------------------------------------------------------------
        for(int i=0;i<onuncuAyrim.length;i++){
                if(onuncuAyrim[i].equals(dokuzuncuAyrim[dokuzuncuAyrim.length-1])){ 
                    out.print(onuncuAyrim[i] + " ");
                    birlesim = birlesim + onuncuAyrim[i] + " ";
                    i = i + 1;
                    sayi8 = false;
                    while(i<onuncuAyrim.length){
                            out.print(onuncuAyrim[i] + " ");
                            birlesim = birlesim + onuncuAyrim[i] + " ";
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi8){
                        for(int k=0;k<onuncuAyrim.length;k++){
                                out.print(onuncuAyrim[k] + " ");
                                birlesim = birlesim + onuncuAyrim[k] + " ";
                        
                                                                }
                        }
        //---------------------------------------------------
      %>
     
     <%   
       
        
        long endTime = System.nanoTime(); //bitiş zamanı.
        
        long estimatedTime = endTime - startTime; // nanosaniye cinsi
        double seconds = (double)estimatedTime/1000000000; // saniye cinsi.
        
        
    %>  
    <br/>
    <%
        out.print("Kodun çalışma zamanı:" + seconds);
        %>
        
        

</body>

</html>
