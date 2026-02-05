<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Valentine</title>

<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Playfair+Display:wght@600&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">

<style>
html { scroll-behavior: smooth; }

body {
    margin: 0;
    font-family: 'Montserrat', sans-serif;
    background: radial-gradient(circle at top, #ffe4ea, #e99aa5);
    color: #4a0c26;
    overflow-x: hidden;
    transition: line-height 0.6s ease;
}
body.readable { line-height: 1.9; }

/* BACKGROUND */
.love-bg {
    position: fixed;
    inset: 0;
    z-index: 0;
    pointer-events: none;
}
.love-bg span {
    position: absolute;
    font-family: 'Great Vibes', cursive;
    font-size: 2em;
    color: rgba(255,60,120,0.12);
    animation: drift linear infinite;
}
.float-heart {
    position: fixed;
    bottom: -20px;
    font-size: 18px;
    opacity: 0.6;
    animation: floatUp linear infinite;
    pointer-events: none;
    z-index: 1;
}

/* TOP */
.top-text {
    font-family: 'Great Vibes', cursive;
    font-size: 3.5em;
    text-align: center;
    padding: 25px 10px;
    background: linear-gradient(90deg, #ff9a9e, #fad0c4);
    position: relative;
    z-index: 3;
}

/* NAV */
.nav {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 15px;
    padding: 30px 20px;
    position: relative;
    z-index: 3;
}
.nav a {
    text-decoration: none;
    padding: 14px 22px;
    border-radius: 30px;
    font-weight: 600;
    background: linear-gradient(135deg, #ffd1dc, #ffb6c1);
    color: #4a0c26;
    box-shadow: 0 8px 18px rgba(0,0,0,0.25);
    transition: transform 0.2s, opacity 0.3s;
}
.nav a:hover { transform: translateY(-3px); }
.nav a.clicked { opacity: 0.45; }

/* ADITI */
.sun {
    width: 160px;
    height: 160px;
    margin: 30px auto 80px;
    border-radius: 50%;
    background: radial-gradient(circle, #ffd1dc, #ff5c8a);
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: 'Great Vibes', cursive;
    font-size: 3.3em;
    color: #7a0026;
    box-shadow: 0 0 40px rgba(255,80,130,0.7);
    animation: sunPulse 4s ease-in-out infinite;
    cursor: pointer;
    position: relative;
    z-index: 3;
}

/* SECTIONS */
section {
    min-height: 100vh;
    padding: 80px 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    z-index: 2;
}
.card {
    max-width: 850px;
    background: linear-gradient(160deg, rgba(255,255,255,0.9), rgba(255,230,235,0.9));
    border-radius: 35px;
    padding: 50px;
    box-shadow: 0 25px 50px rgba(0,0,0,0.3);
    text-align: center;
}
h1 {
    font-family: 'Playfair Display', serif;
    font-size: 2.7em;
}
p {
    font-size: 1.25em;
    line-height: 1.8;
}
.back-top {
    display: inline-block;
    margin-top: 35px;
    padding: 12px 28px;
    border-radius: 30px;
    text-decoration: none;
    background: linear-gradient(135deg, #ff9a9e, #ffb6c1);
    color: #4a0c26;
    font-weight: 600;
}

/* VALENTINE */
.buttons { margin-top: 35px; }
button {
    font-size: 1.3em;
    padding: 15px 40px;
    margin: 10px;
    border: none;
    border-radius: 40px;
    cursor: pointer;
    font-weight: 600;
}
button.clicked { opacity: 0.45; }
.yes { background: linear-gradient(135deg, #2ecc71, #27ae60); color: white; }
.no { background: linear-gradient(135deg, #e74c3c, #c0392b); color: white; }
.yay {
    display: none;
    font-size: 3em;
    margin-top: 30px;
    animation: pop 1s ease infinite alternate;
}

/* EFFECTS */
.heart-burst {
    position: fixed;
    font-size: 22px;
    pointer-events: none;
    transform: translate(-50%, -50%);
    animation: heartBurst 1.4s ease-out forwards;
    z-index: 50;
}
.confetti {
    position: fixed;
    width: 8px;
    height: 12px;
    top: -10px;
    animation: confettiFall linear forwards;
    z-index: 10;
}
.reset {
    position: fixed;
    bottom: 20px;
    right: 20px;
    padding: 14px 22px;
    border-radius: 30px;
    background: linear-gradient(135deg, #888, #555);
    color: white;
    font-weight: 600;
    cursor: pointer;
    z-index: 20;
}

/* ANIMATIONS */
@keyframes sunPulse { 50% { box-shadow: 0 0 65px rgba(255,80,130,1); } }
@keyframes pop { to { transform: scale(1.15); } }
@keyframes drift { to { transform: translateY(-150vh); } }
@keyframes floatUp { to { transform: translateY(-120vh); opacity: 0; } }
@keyframes confettiFall { to { transform: translateY(120vh) rotate(720deg); } }
@keyframes heartBurst {
    to {
        opacity: 0;
        transform: translate(calc(-50% + var(--x)), calc(-50% + var(--y))) rotate(720deg) scale(0);
    }
}
</style>
</head>

<body id="top">

<div class="love-bg" id="loveBg"></div>

<div class="top-text">To the one I love most</div>

<div class="nav">
    <a href="#eyes">Your Eyes</a>
    <a href="#face">Your Face</a>
    <a href="#personality">Your Personality</a>
    <a href="#meaning">What You Mean To Me</a>
    <a href="#declaration">Declaration Of Love</a>
    <a href="#letter">Love Letter</a>
    <a href="#valentine">The Question</a>
</div>

<div class="sun" onclick="heartExplosion(event)">Aditi</div>

<section id="eyes">
<div class="card">
<h1>Your Eyes</h1>
<p>
The most beautiful eyes I have seen. I could stare into them for hours; for me, that’s where my whole world is.
I see my future when I look into them — maybe including a kid or two, and perhaps marriage.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="face">
<div class="card">
<h1>Your Face</h1>
<p>
Fell for it at first sight. Although I did think you looked like a cute little steamed momo,
your cuteness was enough for me to fall and want to look at that face first thing every morning when I wake up.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="personality">
<div class="card">
<h1>Your Personality</h1>
<p>
You are the sweetest, cutest person ever, and you’re strong — a lot stronger than me or anyone else.
I love that I have a chance at spending my whole life with someone like you.
I am a very lucky guy, you know.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="meaning">
<div class="card">
<h1>What You Mean To Me</h1>
<p>
I have no idea how to put it into words. I love you a lot.
The past three years have been tough, and I know we’ll go through tough things,
but you mean the world to me.
There is no one else in the whole world I would want to spend even my hard times with other than you, my love.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="declaration">
<div class="card">
<h1>Declaration Of Love</h1>
<p>
I love you so, so, sososososososososo much.
Soon you will be presented with a question (I hope you say yes — I have a pretty big crush on you, you know).
I hereby declare that I, Nityam Rai, am very deeply in love with you.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="letter">
<div class="card">
<h1>Love Letter</h1>
<p>
I think about you, and I think about us every single day.
Every time I think of you, I’m not quite sure what I’ll be able to say next.
I could say thank you for being with me for so long,
or I could tell you for the hundredth time that I love you.
I love every little thing about you —
the way you smile, the way you giggle, the way you get too shy when I get too close.
You’ve changed me and my world in the most beautiful way possible.
You’re incredible, and I love you so much.
Thank you for being you and for putting up with me, my love.
</p>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<section id="valentine">
<div class="card">
<h1>The Question</h1>
<p>Will you be my Valentine?</p>
<div class="buttons">
<button class="yes" onclick="sayYes(this)">Yes</button>
<button class="no" onclick="convertNo(this)">No</button>
</div>
<div class="yay" id="yayText">Yay! I love you!!!</div>
<a class="back-top" href="#top">Back to top</a>
</div>
</section>

<div class="reset" onclick="location.reload()">Reset</div>

<script>
document.querySelectorAll(".nav a").forEach(a =>
    a.addEventListener("click", () => a.classList.add("clicked"))
);

function sayYes(btn){
    btn.classList.add("clicked");
    document.body.classList.add("readable");
    document.getElementById("yayText").style.display="block";
    confetti();
}
function convertNo(btn){
    btn.textContent="Yes";
    btn.className="yes";
    btn.onclick=()=>sayYes(btn);
}
function confetti(){
    for(let i=0;i<120;i++){
        const c=document.createElement("div");
        c.className="confetti";
        c.style.left=Math.random()*100+"vw";
        c.style.background=`hsl(${Math.random()*360},100%,70%)`;
        c.style.animationDuration=(3+Math.random()*2)+"s";
        document.body.appendChild(c);
        setTimeout(()=>c.remove(),5000);
    }
}
function heartExplosion(e){
    const r=e.currentTarget.getBoundingClientRect();
    const cx=r.left+r.width/2, cy=r.top+r.height/2;
    for(let i=0;i<40;i++){
        const h=document.createElement("div");
        h.className="heart-burst";
        h.textContent="❤";
        h.style.left=cx+"px";
        h.style.top=cy+"px";
        const a=Math.random()*Math.PI*2;
        const d=120+Math.random()*160;
        h.style.setProperty("--x",Math.cos(a)*d+"px");
        h.style.setProperty("--y",Math.sin(a)*d+"px");
        h.style.color=`hsl(${Math.random()*360},100%,70%)`;
        document.body.appendChild(h);
        setTimeout(()=>h.remove(),1500);
    }
}
const bg=document.getElementById("loveBg");
for(let i=0;i<90;i++){
    const s=document.createElement("span");
    s.textContent=Math.random()>0.5?"I love you":"❤";
    s.style.left=Math.random()*100+"vw";
    s.style.top=Math.random()*120+"vh";
    s.style.animationDuration=(30+Math.random()*40)+"s";
    bg.appendChild(s);
}
setInterval(()=>{
    const h=document.createElement("div");
    h.className="float-heart";
    h.textContent="❤";
    h.style.left=Math.random()*100+"vw";
    h.style.animationDuration=(4+Math.random()*4)+"s";
    document.body.appendChild(h);
    setTimeout(()=>h.remove(),8000);
},450);
</script>

</body>
</html>

