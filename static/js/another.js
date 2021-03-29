async function changePrice(){
    var elt = document.querySelector('select#capacite');
    var index = await elt.selectedIndex;
    var capacite = elt.options[index].innerText;
    var price = document.getElementById('price');
    if(capacite=="Choisissez une option"){
        let box = document.querySelector("div#question1");
        price.innerText= "Prix";
        box.classList.add('visuallyhidden');    
        box.addEventListener('transitionend', function(e) {
        box.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });
    }
    //console.log(capacite)
    
    
    var data = document.getElementById('data').children;
    //console.log(data.length)
    var i=0;
    var input_cap1 = document.querySelector('input#capacite1')
    for(i=0;i<data.length;i++){
        var table =data[i].innerText.split('|');
        //console.log(table)
        if(capacite == table[0]){
            price.innerText = table[1]+' FCFA';
            input_cap1.value=table[0]
            console.log(capacite)
        }else{
            
            console.log(capacite)
            input_cap1.value=capacite
            
        }
    }
}
changePrice();
function color(){
    var active = document.getElementsByClassName('slick-current');
    var couleur = active[0].children[0].children[1].innerText;
    var doc = document.querySelector('ul.slick3-dots');

    var input_couleur = document.getElementById('color-input');
    input_couleur.value = couleur;
    console.log(input_couleur.value);
}
function change(){
    var k=0;
    for(k=0;k<document.querySelector('ul.slick3-dots').childNodes.length;k++){
    if(document.querySelector('ul.slick3-dots').childNodes[k].className == "slick-active"){
            var couleur = document.getElementById('data-color').children[k].innerHTML;
            var input_couleur = document.getElementById('color-input');
            input_couleur.value = couleur;
            console.log(input_couleur.value);
    }
    }
}
change();

function changeCouleur(){
    var element = document.getElementsByClassName('slick3-dots')[0].children;
    var j=0;
    
    for (j=0;j<element.length;j++){
        var nb = j;
        element[j].addEventListener("click",()=>{color()})
    }
    document.getElementsByClassName('arrow-slick3 prev-slick3 slick-arrow')[0].addEventListener("click",()=>{change()})
    document.getElementsByClassName('arrow-slick3 next-slick3 slick-arrow')[0].addEventListener("click",()=>{change()})

}
changeCouleur();

function troc(){
    var button_troc = document.querySelector("button#troc");
    console.log(question);
    button_troc.addEventListener("click",()=>{
         var question = document.querySelector("div#question");
         console.log(question);
         if(question.style.display == "none"){
             question.style.display = "block";
         }else{
             question.style.display = "none";
         }
    })
   
}
function charge(){
    let btn = document.querySelector('select#modele_cap');
    let btn2 = document.querySelector('select#intact');
    btn.selectedIndex =0;
    btn2.selectedIndex =0;
    let index= btn.selectedIndex
    btn.options[index].innerText="Sélectionner";
    btn2.options[index].innerText="Sélectionner";
    console.log(btn.selectedIndex)
}
charge();
function initialise(){
    let oui1 = document.querySelector("button#oui1");
    let non1 = document.querySelector("button#non1");
    if (oui1.classList.contains('btn-primary')){
        oui1.classList.remove('btn-primary');
        oui1.classList.add('btn-light');
    }
    if (non1.classList.contains('btn-primary')){
        non1.classList.remove('btn-primary');
        non1.classList.add('btn-light');
    }
    let oui2 = document.querySelector("button#oui2");
    let non2 = document.querySelector("button#non2");
    if (oui2.classList.contains('btn-primary')){
        oui2.classList.remove('btn-primary');
        oui2.classList.add('btn-light');
    }
    if (non2.classList.contains('btn-primary')){
        non2.classList.remove('btn-primary');
        non2.classList.add('btn-light');
    }
    let oui3 = document.querySelector("button#oui3");
    let non3 = document.querySelector("button#non3");
    if (oui3.classList.contains('btn-primary')){
        oui3.classList.remove('btn-primary');
        oui3.classList.add('btn-light');
    }
    if (non3.classList.contains('btn-primary')){
        non3.classList.remove('btn-primary');
        non3.classList.add('btn-light');
    }
    let oui4 = document.querySelector("button#oui4");
    let non4 = document.querySelector("button#non4");
    if (oui4.classList.contains('btn-primary')){
        oui4.classList.remove('btn-primary');
        oui4.classList.add('btn-light');
    }
    if (non4.classList.contains('btn-primary')){
        non4.classList.remove('btn-primary');
        non4.classList.add('btn-light');
    }
}
function trocChoix(){
    let box = document.querySelector("div#question1");
    let box2 = document.querySelector("div#question2");
    let box3 = document.querySelector("div#question3");
    let box4 = document.querySelector("div#question4");
    let box5 = document.querySelector("div#question5");
    let box6 = document.querySelector("div#question6");
    let serie = document.querySelector("div#serie");
    var price = document.getElementById('price');
    btn = document.querySelector('button#troc');
    btn.addEventListener('click', function () {
    charge();
    initialise();
    console.log(price);
    if ( (price.innerText !="Prix" ) && (box.classList.contains('hidden'))){
        console.log("BON");
        box.classList.remove('hidden');
        setTimeout(function () {
        box.classList.remove('visuallyhidden');
        }, 20);
    } else {
        console.log("MAUVAIS");
        if (!(serie.classList.contains('hidden'))){
            serie.classList.add('visuallyhidden');    
            serie.addEventListener('transitionend', function(e) {
            serie.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box6.classList.contains('hidden'))){
            box6.classList.add('visuallyhidden');    
            box6.addEventListener('transitionend', function(e) {
            box6.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box5.classList.contains('hidden'))){
            box5.classList.add('visuallyhidden');    
            box5.addEventListener('transitionend', function(e) {
            box5.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box4.classList.contains('hidden'))){
            box4.classList.add('visuallyhidden');    
            box4.addEventListener('transitionend', function(e) {
            box4.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box3.classList.contains('hidden'))){
            box3.classList.add('visuallyhidden');    
            box3.addEventListener('transitionend', function(e) {
            box3.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box2.classList.contains('hidden'))){
            box2.classList.add('visuallyhidden');    
            box2.addEventListener('transitionend', function(e) {
            box2.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        
        box.classList.add('visuallyhidden');    
        box.addEventListener('transitionend', function(e) {
        box.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });
        
    }

        }, false);
};
trocChoix();
async function ModeleCap(){
    let box = document.querySelector("div#question2");
    let btn = document.querySelector('select#modele_cap');
    let box3 = document.querySelector("div#question3");
    let box4 = document.querySelector("div#question4");
    let box5 = document.querySelector("div#question5");
    let box6 = document.querySelector("div#question6");
    let serie = document.querySelector("div#serie");
    var index = await btn.selectedIndex;
    var select = btn.options[index].innerText;
    initialise();
    console.log(capacite);
    console.log(box);
    if((select != "Sélectionner") || (box.classList.contains('hidden'))){
            box.classList.remove('hidden');
            setTimeout(function () {
            box.classList.remove('visuallyhidden');
            }, 20);
    
    }
    else {
            if (!(serie.classList.contains('hidden'))){
                serie.classList.add('visuallyhidden');    
                serie.addEventListener('transitionend', function(e) {
                serie.classList.add('hidden');
                }, {
                capture: false,
                once: true,
                passive: false
                });
            }
            if (!(box6.classList.contains('hidden'))){
                box6.classList.add('visuallyhidden');    
                box6.addEventListener('transitionend', function(e) {
                box6.classList.add('hidden');
                }, {
                capture: false,
                once: true,
                passive: false
                });
            }
            if (!(box5.classList.contains('hidden'))){
                box5.classList.add('visuallyhidden');    
                box5.addEventListener('transitionend', function(e) {
                box5.classList.add('hidden');
                }, {
                capture: false,
                once: true,
                passive: false
                });
            }
            if (!(box4.classList.contains('hidden'))){
                box4.classList.add('visuallyhidden');    
                box4.addEventListener('transitionend', function(e) {
                box4.classList.add('hidden');
                }, {
                capture: false,
                once: true,
                passive: false
                });
            }
            if (!(box3.classList.contains('hidden'))){
                box3.classList.add('visuallyhidden');    
                box3.addEventListener('transitionend', function(e) {
                box3.classList.add('hidden');
                }, {
                capture: false,
                once: true,
                passive: false
                });
            }
            box.classList.add('visuallyhidden');    
            box.addEventListener('transitionend', function(e) {
            box.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
    }
    

}

async function Intact(){
    let box = document.querySelector("div#question3");
    btn = document.querySelector('select#intact');
    let serie = document.querySelector("div#serie");
    let box4 = document.querySelector("div#question4");
    let box5 = document.querySelector("div#question5");
    let box6 = document.querySelector("div#question6");
    var index = await btn.selectedIndex;
    var select = btn.options[index].innerText;
    initialise();
    console.log(capacite);
    console.log(box);
    if((select != "Sélectionner") && (box.classList.contains('hidden'))){
            box.classList.remove('hidden');
            setTimeout(function () {
            box.classList.remove('visuallyhidden');
            }, 20);
    
    }
    else {
        if (!(serie.classList.contains('hidden'))){
            serie.classList.add('visuallyhidden');    
            serie.addEventListener('transitionend', function(e) {
            serie.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box6.classList.contains('hidden'))){
            box6.classList.add('visuallyhidden');    
            box6.addEventListener('transitionend', function(e) {
            box6.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box5.classList.contains('hidden'))){
            box5.classList.add('visuallyhidden');    
            box5.addEventListener('transitionend', function(e) {
            box5.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
        if (!(box4.classList.contains('hidden'))){
            box4.classList.add('visuallyhidden');    
            box4.addEventListener('transitionend', function(e) {
            box4.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
        }
            box.classList.add('visuallyhidden');    
            box.addEventListener('transitionend', function(e) {
            box.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
            });
    }
    

}
function DisplayBoitier(inp,q){
    let input = inp;
    let q5 = q;
    if(input.value == ""){
        q5.classList.add('visuallyhidden');    
        q5.addEventListener('transitionend', function(e) {
        q5.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });
        
        
    }else{
        q5.classList.remove('hidden');
        setTimeout(function () {
        q5.classList.remove('visuallyhidden');
        }, 10);
    }
}
function DisplaySerie2(inp){
    let input = inp;
    let box = document.querySelector("div#serie");
    if(input.value == ""){
        box.classList.add('visuallyhidden');    
        box.addEventListener('transitionend', function(e) {
        box.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });
        
        
    }else{
        box.classList.remove('hidden');
        setTimeout(function () {
        box.classList.remove('visuallyhidden');
        }, 10);
    }

}
function DisplaySerie(inp){
    let input = inp;
    let box = document.querySelector("div#serie");
    let q4 = document.querySelector("div#question4");
    let q5 = document.querySelector("div#question5");
    let q6 = document.querySelector("div#question6");
    console.log(box);
    if(input.value == "OUI"){
        if (!(q4.classList.contains("hidden"))){
            q4.classList.add('visuallyhidden');    
            q4.addEventListener('transitionend', function(e) {
            q4.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
        });
        }
        if (!(q5.classList.contains("hidden"))){
            q5.classList.add('visuallyhidden');    
            q5.addEventListener('transitionend', function(e) {
            q5.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
        });
        }
        if (!(q6.classList.contains("hidden"))){
            q6.classList.add('visuallyhidden');    
            q6.addEventListener('transitionend', function(e) {
            q6.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
        });
        }
        box.classList.remove('hidden');
        setTimeout(function () {
        box.classList.remove('visuallyhidden');
        }, 10);
        
    }else if (input.value == "NON"){
        if (!(box.classList.contains("hidden"))){
            box.classList.add('visuallyhidden');    
            box.addEventListener('transitionend', function(e) {
            box.classList.add('hidden');
            }, {
            capture: false,
            once: true,
            passive: false
        });
        }
        q4.classList.remove('hidden');
        setTimeout(function () {
        q4.classList.remove('visuallyhidden');
        }, 10);
    }else{
        q4.classList.add('visuallyhidden');    
        q4.addEventListener('transitionend', function(e) {
        q4.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });


        box.classList.add('visuallyhidden');    
        box.addEventListener('transitionend', function(e) {
        box.classList.add('hidden');
        }, {
        capture: false,
        once: true,
        passive: false
        });
            
    }
    
}

function Q1_non(){
    let oui = document.querySelector("button#oui1");
    let non = document.querySelector("button#non1");
    let input = document.querySelector("input#etat");
    if((non.classList.contains('btn-light')) && (oui.classList.contains('btn-light'))){
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplaySerie(input);
        
    }
    else if ((non.classList.contains('btn-light')) && (oui.classList.contains('btn-primary'))){
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light')
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplaySerie(input);
        
    }else{
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplaySerie(input);
    }
}
function Q1_oui(){
    let oui = document.querySelector("button#oui1");
    let non = document.querySelector("button#non1");
    let input = document.querySelector("input#etat");

    if(oui.classList.contains('btn-light') && (non.classList.contains('btn-light'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        input.value = "OUI";
        console.log(input.value);
        DisplaySerie(input);
    }
    else if ((oui.classList.contains('btn-light')) && (non.classList.contains('btn-primary'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "OUI";
        console.log(input.value);
        DisplaySerie(input);
        
    }
    else{
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplaySerie(input);
        
    }
}



function Q2_non(){
    let oui = document.querySelector("button#oui2");
    let non = document.querySelector("button#non2");
    let q5 = document.querySelector("div#question5");
    let input = document.querySelector("input#allum_bouton");
    if((non.classList.contains('btn-light')) && (oui.classList.contains('btn-light'))){
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplayBoitier(input,q5);
        
    }
    else if ((non.classList.contains('btn-light')) && (oui.classList.contains('btn-primary'))){
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light')
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplayBoitier(input,q5);
        
        
    }else{
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplayBoitier(input,q5);
        
    }
}
function Q2_oui(){
    let oui = document.querySelector("button#oui2");
    let non = document.querySelector("button#non2");
    let input = document.querySelector("input#allum_bouton");
    let q5 = document.querySelector("div#question5");

    if(oui.classList.contains('btn-light') && (non.classList.contains('btn-light'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        input.value = "OUI";
        console.log(input.value);
        DisplayBoitier(input,q5);
        
    }
    else if ((oui.classList.contains('btn-light')) && (non.classList.contains('btn-primary'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "OUI";
        console.log(input.value);
        DisplayBoitier(input,q5);
        
    }
    else{
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplayBoitier(input,q5);
    }
}

function Q3_non(){
    let oui = document.querySelector("button#oui3");
    let non = document.querySelector("button#non3");
    let input = document.querySelector("input#boitier");
    let q6 = document.querySelector("div#question6");
    if((non.classList.contains('btn-light')) && (oui.classList.contains('btn-light'))){
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplayBoitier(input,q6);
        
    }
    else if ((non.classList.contains('btn-light')) && (oui.classList.contains('btn-primary'))){
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light')
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplayBoitier(input,q6);
        
        
    }else{
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplayBoitier(input,q6);
        
    }
}
function Q3_oui(){
    let oui = document.querySelector("button#oui3");
    let non = document.querySelector("button#non3");
    let input = document.querySelector("input#boitier");
    let q6 = document.querySelector("div#question6");

    if(oui.classList.contains('btn-light') && (non.classList.contains('btn-light'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        input.value = "OUI";
        console.log(input.value);
        DisplayBoitier(input,q6);
        
    }
    else if ((oui.classList.contains('btn-light')) && (non.classList.contains('btn-primary'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "OUI";
        console.log(input.value);
        DisplayBoitier(input,q6);
        
    }
    else{
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplayBoitier(input,q6);
    }
}


function Q4_non(){
    let oui = document.querySelector("button#oui4");
    let non = document.querySelector("button#non4");
    let input = document.querySelector("input#tactile");
    if((non.classList.contains('btn-light')) && (oui.classList.contains('btn-light'))){
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplaySerie2(input);
        
    }
    else if ((non.classList.contains('btn-light')) && (oui.classList.contains('btn-primary'))){
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light')
        non.classList.remove('btn-light');
        non.classList.add('btn-primary');
        input.value = "NON";
        console.log(input.value);
        DisplaySerie2(input);
        
        
    }else{
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplaySerie2(input);
        
    }
}
function Q4_oui(){
    let oui = document.querySelector("button#oui4");
    let non = document.querySelector("button#non4");
    let input = document.querySelector("input#tactile");

    if(oui.classList.contains('btn-light') && (non.classList.contains('btn-light'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        input.value = "OUI";
        console.log(input.value);
        DisplaySerie2(input);
        
    }
    else if ((oui.classList.contains('btn-light')) && (non.classList.contains('btn-primary'))){
        oui.classList.remove('btn-light');
        oui.classList.add('btn-primary');
        non.classList.remove('btn-primary');
        non.classList.add('btn-light');
        input.value = "OUI";
        console.log(input.value);
        DisplaySerie2(input);
        
    }
    else{
        oui.classList.remove('btn-primary');
        oui.classList.add('btn-light');
        input.value = "";
        console.log(input.value);
        DisplaySerie2(input);

    }
}
