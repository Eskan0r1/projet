
function seconnecter(){
	var login = prompt("Donnez votre nom d'utilisateur")
	var password = prompt("Entrez votre mot de passe")
	if(login =="admin" && password =="admin"){
		document.write(`Bienvenue:  admin`)
	}
	else{
		alert("Accès refusé")
	}
}

function seconnecter2(){
	window.location.href=`identification.html`
}

function login(){
	var login = document.getElementById("t1").value;
	var password = document.getElementById("h1").value;
	if(login =="admin" && password =="admin"){
		window.location.href="yes.html"
	}
	else{
		window.location.href="no.html"
	}
}

function affichagetab(){
    document.write('<table border=2px width=30%');
    for(let i=0;i<=5;i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table>');
}
function affichagetab2(){
    var k=prompt("Nombre de ligne")
    document.write('<table border=2px width=30%');
    for(let i=0;i<=k;i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table>');
}

function swich(){
	var color = prompt ("Entrez une couleur");
	switch(color)
	{  case"rouge" : document.body.style.background ="red";
	   break;
	   case"ROUGE" : document.body.style.background ="red";
	   break;
	   case"bleu" : document.body.style.background ="lightblue";
	   break;
	   case"BLEU" : document.body.style.background ="blue";
	   break;
	   case"vert" : document.body.style.background ="lightgreen";
	   break;
	   case"VERT" : document.body.style.background ="green";
	   break;
       default:alert("couleur non definie");
    }
}

function cdc() {
    var chaine= prompt("Donnez un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("la chaine contient   "+chaine.length+" caractères()"+"<br>");
    document.write("la première lettre est  " + chaine.substr(0,1)+"<br>");
}



function seconnecter3(){
    var i = 0;
    do{
    var login=prompt("Donner votre nom d'utilisateur");
    var password= prompt("Entrer votre mot de passe");
    if(login=="admin" && password=="admin"){
        document.write('Bienvenu:' +login);
        break;
    }
    else{
        alert("Accès refusé");
        i+=1;
    }}
    while(i<3);
    alert("Délai dépassé");
    



}
function ajtLigne(){
		window.location.href=`ajtuneligne.html`

}

function bonus(){
    var testa=""
    var total=""
    var prixttc=0
    do {
        var article = prompt("Votre article");
        var price= prompt("Le prix");
        var qty = prompt("La quantité");

        alert("Vos "+ article + " vous couterons"+ price*qty );
        total=Number(price)*Number(qty);
        prixttc=prixttc+total;
        testa=testa+("Article:" + article +" <br> Prix:"+price+"euros"+"<br> Quantité:"+qty+"<br> Total:"+total+"<br>");
        alert('Le cout total de vos article est de ' +prixttc+'euros')

        next=prompt("Voulez-vous ajouter d'autres article ? Oui/Non");

    }
    while(next !="Non");
    document.write(testa);
    document.write("Prix TTC:"+ prixttc+" euros")

}

