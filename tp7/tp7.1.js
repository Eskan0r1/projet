function moyenne(){

	var a =document.getElementById("1").value;
    var b =document.getElementById("2").value;
    var c =document.getElementById("3").value;
    var d =document.getElementById("coef1").value;
    var e =document.getElementById("coef2").value;
    var f =document.getElementById("coef3").value;
    var g =(Number(a)*Number(d)+Number(b)*Number(e)+Number(c)*Number(f))/(Number(d)+Number(e)+Number(f))

  a1.value=g
  if(g<10)
  moy1.value="Redoublant";
 else if (g<14)
  moy1.value="Admis passable";
 else if (g<16)
  moy1.value="Admis bien";
 else
  moy1.value="Admis très bien";
}