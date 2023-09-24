<%-- 
    Document   : cevap
    Created on : 26 Mar 2023, 21:48:36
    Author     : alica
--%>


<link href="css/style.css" rel="stylesheet" type="text/css"/>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"
            import ="com.mongodb.MongoClient"
            import ="com.mongodb.MongoClientURI"
        
            import ="com.mongodb.client.MongoCollection" 
            import ="com.mongodb.client.MongoDatabase" 
            import ="org.bson.Document" 
            
        
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
            
        String uri = "mongodb+srv://alican:1234@cluster0.xoyb32k.mongodb.net/test";
        MongoClientURI clientURI = new MongoClientURI(uri);
        MongoClient mongoClient = new MongoClient(clientURI);

        MongoDatabase mongoDatabase = mongoClient.getDatabase("test");
        MongoCollection collection = mongoDatabase.getCollection("tablo1");

        Document doc = new Document("isim","nemos");
        doc.append("cinsiyet","kıs");
        doc.append("ask", "kadın");
        
        collection.insertOne(doc);
        
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
                        }
            }
        if(!ikinciCumle.isEmpty()){
            kelime = ikinciCumle.contains(ilkAyrim[ilkAyrim.length-1]); //ali eve gel   geliyor kosarak   cay ıc
            if(kelime){
                    for(int j=0;j<ilkAyrim.length-1;j++){
                        out.print(ilkAyrim[j] + " ");
                        }
            }else{
                    for(int j=0;j<ilkAyrim.length;j++){
                        out.print(ilkAyrim[j] + " ");
                        }
            }
            }
        //------------------
        if(!ucuncuCumle.isEmpty()){
            
            for(int i=0;i<ikinciAyrim.length;i++){
                if(ikinciAyrim[i].equals(ilkAyrim[ilkAyrim.length-1])){ 
                    out.print(ikinciAyrim[i] + " ");
                    i = i + 1;
                    sayi = false;
                    while(i<ikinciAyrim.length-1){
                            out.print(ikinciAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi){
                        kelime1 = ucuncuCumle.contains(ikinciAyrim[ikinciAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime1){
                                for(int k=0;k<ikinciAyrim.length-1;k++){
                                out.print(ikinciAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<ikinciAyrim.length;k++){
                                                    out.print(ikinciAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(ucuncuCumle.isEmpty()){
                for(int i=0;i<ikinciAyrim.length;i++){
                if(ikinciAyrim[i].equals(ilkAyrim[ilkAyrim.length-1])){ 
                    out.print(ikinciAyrim[i] + " ");
                    i = i + 1;
                    sayi = false;
                    while(i<ikinciAyrim.length){
                            out.print(ikinciAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi){
                        for(int k=0;k<ikinciAyrim.length;k++){
                                out.print(ikinciAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
     //-------------
        if(!dorduncuCumle.isEmpty()){
            
            for(int i=0;i<ucuncuAyrim.length;i++){
                if(ucuncuAyrim[i].equals(ikinciAyrim[ikinciAyrim.length-1])){ 
                    out.print(ucuncuAyrim[i] + " ");
                    i = i + 1;
                    sayi1 = false;
                    while(i<ucuncuAyrim.length-1){
                            out.print(ucuncuAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi1){
                        kelime2 = dorduncuCumle.contains(ucuncuAyrim[ucuncuAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime2){
                                for(int k=0;k<ucuncuAyrim.length-1;k++){
                                out.print(ucuncuAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<ucuncuAyrim.length;k++){
                                                    out.print(ucuncuAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(dorduncuCumle.isEmpty()){
                for(int i=0;i<ucuncuAyrim.length;i++){
                if(ucuncuAyrim[i].equals(ikinciAyrim[ikinciAyrim.length-1])){ 
                    out.print(ucuncuAyrim[i] + " ");
                    i = i + 1;
                    sayi1 = false;
                    while(i<ucuncuAyrim.length){
                            out.print(ucuncuAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi1){
                        for(int k=0;k<ucuncuAyrim.length;k++){
                                out.print(ucuncuAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //------------------------------------------
            if(!besinciCumle.isEmpty()){
            
            for(int i=0;i<dorduncuAyrim.length;i++){
                if(dorduncuAyrim[i].equals(ucuncuAyrim[ucuncuAyrim.length-1])){ 
                    out.print(dorduncuAyrim[i] + " ");
                    i = i + 1;
                    sayi2 = false;
                    while(i<dorduncuAyrim.length-1){
                            out.print(dorduncuAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi2){
                        kelime3 = besinciCumle.contains(dorduncuAyrim[dorduncuAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime3){
                                for(int k=0;k<dorduncuAyrim.length-1;k++){
                                out.print(dorduncuAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<dorduncuAyrim.length;k++){
                                                    out.print(dorduncuAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(besinciCumle.isEmpty()){
                for(int i=0;i<dorduncuAyrim.length;i++){
                if(dorduncuAyrim[i].equals(ucuncuAyrim[ucuncuAyrim.length-1])){ 
                    out.print(dorduncuAyrim[i] + " ");
                    i = i + 1;
                    sayi2 = false;
                    while(i<dorduncuAyrim.length){
                            out.print(dorduncuAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi2){
                        for(int k=0;k<dorduncuAyrim.length;k++){
                                out.print(dorduncuAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //-------------------------------------------------------
        if(!altinciCumle.isEmpty()){
            
            for(int i=0;i<besinciAyrim.length;i++){
                if(besinciAyrim[i].equals(dorduncuAyrim[dorduncuAyrim.length-1])){ 
                    out.print(besinciAyrim[i] + " ");
                    i = i + 1;
                    sayi3 = false;
                    while(i<besinciAyrim.length-1){
                            out.print(besinciAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi3){
                        kelime4 = altinciCumle.contains(besinciAyrim[besinciAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime4){
                                for(int k=0;k<besinciAyrim.length-1;k++){
                                out.print(besinciAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<besinciAyrim.length;k++){
                                                    out.print(besinciAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(altinciCumle.isEmpty()){
                for(int i=0;i<besinciAyrim.length;i++){
                if(besinciAyrim[i].equals(dorduncuAyrim[dorduncuAyrim.length-1])){ 
                    out.print(besinciAyrim[i] + " ");
                    i = i + 1;
                    sayi3 = false;
                    while(i<besinciAyrim.length){
                            out.print(besinciAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi3){
                        for(int k=0;k<besinciAyrim.length;k++){
                                out.print(besinciAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //-----------------------------------------------------------------------------
        if(!yedinciCumle.isEmpty()){
            
            for(int i=0;i<altinciAyrim.length;i++){
                if(altinciAyrim[i].equals(besinciAyrim[besinciAyrim.length-1])){ 
                    out.print(altinciAyrim[i] + " ");
                    i = i + 1;
                    sayi4 = false;
                    while(i<altinciAyrim.length-1){
                            out.print(altinciAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi4){
                        kelime5 = yedinciCumle.contains(altinciAyrim[altinciAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime5){
                                for(int k=0;k<altinciAyrim.length-1;k++){
                                out.print(altinciAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<altinciAyrim.length;k++){
                                                    out.print(altinciAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(yedinciCumle.isEmpty()){
                for(int i=0;i<altinciAyrim.length;i++){
                if(altinciAyrim[i].equals(besinciAyrim[besinciAyrim.length-1])){ 
                    out.print(altinciAyrim[i] + " ");
                    i = i + 1;
                    sayi4 = false;
                    while(i<altinciAyrim.length){
                            out.print(altinciAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi4){
                        for(int k=0;k<altinciAyrim.length;k++){
                                out.print(altinciAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //---------------------------------------------------------------------------------
        if(!sekizinciCumle.isEmpty()){
            
            for(int i=0;i<yedinciAyrim.length;i++){
                if(yedinciAyrim[i].equals(altinciAyrim[altinciAyrim.length-1])){ 
                    out.print(yedinciAyrim[i] + " ");
                    i = i + 1;
                    sayi5 = false;
                    while(i<yedinciAyrim.length-1){
                            out.print(yedinciAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi5){
                        kelime6 = sekizinciCumle.contains(yedinciAyrim[yedinciAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime6){
                                for(int k=0;k<yedinciAyrim.length-1;k++){
                                out.print(yedinciAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<yedinciAyrim.length;k++){
                                                    out.print(yedinciAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(sekizinciCumle.isEmpty()){
                for(int i=0;i<yedinciAyrim.length;i++){
                if(yedinciAyrim[i].equals(altinciAyrim[altinciAyrim.length-1])){ 
                    out.print(yedinciAyrim[i] + " ");
                    i = i + 1;
                    sayi5 = false;
                    while(i<yedinciAyrim.length){
                            out.print(yedinciAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi5){
                        for(int k=0;k<yedinciAyrim.length;k++){
                                out.print(yedinciAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //----------------------------------------------------------------------------
        if(!dokuzuncuCumle.isEmpty()){
            
            for(int i=0;i<sekizinciAyrim.length;i++){
                if(sekizinciAyrim[i].equals(yedinciAyrim[yedinciAyrim.length-1])){ 
                    out.print(sekizinciAyrim[i] + " ");
                    i = i + 1;
                    sayi6 = false;
                    while(i<sekizinciAyrim.length-1){
                            out.print(sekizinciAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi6){
                        kelime7 = dokuzuncuCumle.contains(sekizinciAyrim[sekizinciAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime7){
                                for(int k=0;k<sekizinciAyrim.length-1;k++){
                                out.print(sekizinciAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<sekizinciAyrim.length;k++){
                                                    out.print(sekizinciAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(dokuzuncuCumle.isEmpty()){
                for(int i=0;i<sekizinciAyrim.length;i++){
                if(sekizinciAyrim[i].equals(yedinciAyrim[yedinciAyrim.length-1])){ 
                    out.print(sekizinciAyrim[i] + " ");
                    i = i + 1;
                    sayi6 = false;
                    while(i<sekizinciAyrim.length){
                            out.print(sekizinciAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi6){
                        for(int k=0;k<sekizinciAyrim.length;k++){
                                out.print(sekizinciAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //----------------------------------------------------------------------------
        if(!onuncuCumle.isEmpty()){
            
            for(int i=0;i<dokuzuncuAyrim.length;i++){
                if(dokuzuncuAyrim[i].equals(sekizinciAyrim[sekizinciAyrim.length-1])){ 
                    out.print(dokuzuncuAyrim[i] + " ");
                    i = i + 1;
                    sayi7 = false;
                    while(i<dokuzuncuAyrim.length-1){
                            out.print(dokuzuncuAyrim[i] + " ");
                            i = i +1;
                                    }
                }
                }
                if(sayi7){
                        kelime8 = onuncuCumle.contains(dokuzuncuAyrim[dokuzuncuAyrim.length-1]);  // 2. cumlenın son kelimesi
                        if(kelime8){
                                for(int k=0;k<dokuzuncuAyrim.length-1;k++){
                                out.print(dokuzuncuAyrim[k] + " ");
                        
                                    }
                                    }
                                    else{
                                            for(int k=0;k<dokuzuncuAyrim.length;k++){
                                                    out.print(dokuzuncuAyrim[k] + " ");
                        
                                    }
                                            }
                        
                        }
        }
        if(onuncuCumle.isEmpty()){
                for(int i=0;i<dokuzuncuAyrim.length;i++){
                if(dokuzuncuAyrim[i].equals(sekizinciAyrim[sekizinciAyrim.length-1])){ 
                    out.print(dokuzuncuAyrim[i] + " ");
                    i = i + 1;
                    sayi7 = false;
                    while(i<dokuzuncuAyrim.length){
                            out.print(dokuzuncuAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi7){
                        for(int k=0;k<dokuzuncuAyrim.length;k++){
                                out.print(dokuzuncuAyrim[k] + " ");
                        
                                                                }
                        }
                                    }
        //--------------------------------------------------------------
        for(int i=0;i<onuncuAyrim.length;i++){
                if(onuncuAyrim[i].equals(dokuzuncuAyrim[dokuzuncuAyrim.length-1])){ 
                    out.print(onuncuAyrim[i] + " ");
                    i = i + 1;
                    sayi8 = false;
                    while(i<onuncuAyrim.length){
                            out.print(onuncuAyrim[i] + " ");
                            i = i +1;
                                                }
                                                                        }
                                                    }
                if(sayi8){
                        for(int k=0;k<onuncuAyrim.length;k++){
                                out.print(onuncuAyrim[k] + " ");
                        
                                                                }
                        }
        //------------------------------------------------------------
        
        
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
