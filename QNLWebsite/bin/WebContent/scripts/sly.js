/*! sly 1.2.0 - 31st Oct 2013 | https://github.com/Darsain/sly */
(function(l,B,Ba){function la(f,k,Va){var y,R,qa,s,ra,B,sa,ma;function aa(){var b=0,h=w.length;e.old=l.extend({},e);z=H?0:E[c.horizontal?"width":"height"]();S=K[c.horizontal?"width":"height"]();t=H?f:u[c.horizontal?"outerWidth":"outerHeight"]();w.length=0;e.start=0;e.end=Math.max(t-z,0);if(C){b=n.length;F=u.children(c.itemSelector);n.length=0;var a=na(u,c.horizontal?"paddingLeft":"paddingTop"),ta=na(u,c.horizontal?"paddingRight":"paddingBottom"),k="border-box"===l(F).css("boxSizing"),m="none"!==F.css("float"),
s=0,r=F.length-1,y;t=0;F.each(function(b,h){var d=l(h),e=d[c.horizontal?"outerWidth":"outerHeight"](),f=na(d,c.horizontal?"marginLeft":"marginTop"),d=na(d,c.horizontal?"marginRight":"marginBottom"),g=e+f+d,p=!f||!d,k={};k.el=h;k.size=p?e:g;k.half=k.size/2;k.start=t+(p?f:0);k.center=k.start-Math.round(z/2-k.size/2);k.end=k.start-z+k.size;b||(t+=a);t+=g;c.horizontal||m||d&&(f&&0<b)&&(t-=Math.min(f,d));b===r&&(k.end+=ta,t+=ta,s=p?d:0);n.push(k);y=k});u[0].style[c.horizontal?"width":"height"]=(k?t:t-
a-ta)+"px";t-=s;n.length?(e.start=n[0][T?"center":"start"],e.end=T?y.center:z<t?y.end:e.start):e.start=e.end=0}e.center=Math.round(e.end/2+e.start/2);l.extend(g,ua(void 0));D.length&&0<S&&(c.dynamicHandle?(N=e.start===e.end?S:Math.round(S*z/t),N=v(N,c.minHandleSize,S),D[0].style[c.horizontal?"width":"height"]=N+"px"):N=D[c.horizontal?"outerWidth":"outerHeight"](),q.end=S-N,U||Ca());if(!H&&0<z){var p=e.start,k="";if(C)l.each(n,function(b,h){T?w.push(h.center):h.start+h.size>p&&p<e.end&&(p=h.start,
w.push(p),p>=e.end||(p+=z,p>e.end&&w.push(e.end)))});else for(;p-z<e.end;)w.push(p),p+=z;if(V[0]&&h!==w.length){for(h=0;h<w.length;h++)k+=c.pageBuilder.call(d,h);ga=V.html(k).children();ga.eq(g.activePage).addClass(c.activeClass)}}g.slideeSize=t;g.frameSize=z;g.sbSize=S;g.handleSize=N;C?(d.initialized?(g.activeItem>=n.length||0===b&&0<n.length)&&oa(g.activeItem>=n.length?n.length-1:0,!b):(oa(c.startAt),d[L?"toCenter":"toStart"](c.startAt)),I(L&&n.length?n[g.activeItem].center:v(e.dest,e.start,e.end))):
d.initialized?I(v(e.dest,e.start,e.end)):I(c.startAt,1);A("load")}function I(b,h,fa){if(C&&a.released&&!fa){fa=ua(b);var f=b>e.start&&b<e.end;L?(f&&(b=n[fa.centerItem].center),T&&c.activateMiddle&&oa(fa.centerItem)):f&&(b=n[fa.firstItem].start)}a.init&&a.slidee&&c.elasticBounds?b>e.end?b=e.end+(b-e.end)/6:b<e.start&&(b=e.start+(b-e.start)/6):b=v(b,e.start,e.end);y=+new Date;R=0;qa=e.cur;s=b;ra=b-e.cur;B=a.tweese||a.init&&!a.slidee;sa=!B&&(h||a.init&&a.slidee||!c.speed);a.tweese=0;b!==e.dest&&(e.dest=
b,A("change"),U||va());a.released&&!d.isPaused&&d.resume();l.extend(g,ua(void 0));Da();ga[0]&&r.page!==g.activePage&&(r.page=g.activePage,ga.removeClass(c.activeClass).eq(g.activePage).addClass(c.activeClass),A("activePage",r.page))}function va(){U?(sa?e.cur=s:B?(ma=s-e.cur,0.1>Math.abs(ma)?e.cur=s:e.cur+=ma*(a.released?c.swingSpeed:c.syncSpeed)):(R=Math.min(+new Date-y,c.speed),e.cur=qa+ra*jQuery.easing[c.easing](R/c.speed,R,0,1,c.speed)),s===e.cur?(e.cur=s,a.tweese=U=0):U=ha(va),A("move"),H||(J?
u[0].style[J]=ia+(c.horizontal?"translateX":"translateY")+"("+-e.cur+"px)":u[0].style[c.horizontal?"left":"top"]=-Math.round(e.cur)+"px"),!U&&a.released&&A("moveEnd"),Ca()):(U=ha(va),a.released&&A("moveStart"))}function Ca(){D.length&&(q.cur=e.start===e.end?0:((a.init&&!a.slidee?e.dest:e.cur)-e.start)/(e.end-e.start)*q.end,q.cur=v(Math.round(q.cur),q.start,q.end),r.hPos!==q.cur&&(r.hPos=q.cur,J?D[0].style[J]=ia+(c.horizontal?"translateX":"translateY")+"("+q.cur+"px)":D[0].style[c.horizontal?"left":
"top"]=q.cur+"px"))}function Ea(){p.speed&&e.cur!==(0<p.speed?e.end:e.start)||d.stop();Fa=a.init?ha(Ea):0;p.now=+new Date;p.pos=e.cur+(p.now-p.lastTime)/1E3*p.speed;I(a.init?p.pos:Math.round(p.pos));a.init||e.cur!==e.dest||A("moveEnd");p.lastTime=p.now}function wa(b,h,a){"boolean"===ja(h)&&(a=h,h=Ba);h===Ba?I(e[b],a):L&&"center"!==b||(h=d.getPos(h))&&I(h[b],a,!L)}function pa(b){return null!=b?O(b)?0<=b&&b<n.length?b:-1:F.index(b):-1}function xa(b){return pa(O(b)&&0>b?b+n.length:b)}function oa(b,h){var a=
pa(b);if(!C||0>a)return!1;if(r.active!==a||h)F.eq(g.activeItem).removeClass(c.activeClass),F.eq(a).addClass(c.activeClass),r.active=g.activeItem=a,Da(),A("active",a);return a}function ua(b){b=v(O(b)?b:e.dest,e.start,e.end);var h={},a=T?0:z/2;if(!H)for(var c=0,d=w.length;c<d;c++){if(b>=e.end||c===w.length-1){h.activePage=w.length-1;break}if(b<=w[c]+a){h.activePage=c;break}}if(C){for(var d=c=a=!1,f=0,g=n.length;f<g;f++)if(!1===a&&b<=n[f].start+n[f].half&&(a=f),!1===d&&b<=n[f].center+n[f].half&&(d=f),
f===g-1||b<=n[f].end+n[f].half){c=f;break}h.firstItem=O(a)?a:0;h.centerItem=O(d)?d:h.firstItem;h.lastItem=O(c)?c:h.centerItem}return h}function Da(){var b=e.dest<=e.start,h=e.dest>=e.end,d=b?1:h?2:3;r.slideePosState!==d&&(r.slideePosState=d,W.is("button,input")&&W.prop("disabled",b),X.is("button,input")&&X.prop("disabled",h),W.add(ba)[b?"addClass":"removeClass"](c.disabledClass),X.add(Y)[h?"addClass":"removeClass"](c.disabledClass));r.fwdbwdState!==d&&a.released&&(r.fwdbwdState=d,ba.is("button,input")&&
ba.prop("disabled",b),Y.is("button,input")&&Y.prop("disabled",h));C&&(b=0===g.activeItem,h=g.activeItem>=n.length-1,d=b?1:h?2:3,r.itemsButtonState!==d&&(r.itemsButtonState=d,Z.is("button,input")&&Z.prop("disabled",b),$.is("button,input")&&$.prop("disabled",h),Z[b?"addClass":"removeClass"](c.disabledClass),$[h?"addClass":"removeClass"](c.disabledClass)))}function Ga(b,a,c){b=xa(b);a=xa(a);if(-1<b&&-1<a&&b!==a&&!(c&&a===b-1||!c&&a===b+1)){F.eq(b)[c?"insertAfter":"insertBefore"](n[a].el);var d=b<a?b:
c?a:a-1,e=b>a?b:c?a+1:a,f=b>a;b===g.activeItem?r.active=g.activeItem=c?f?a+1:a:f?a:a-1:g.activeItem>d&&g.activeItem<e&&(r.active=g.activeItem+=f?1:-1);aa()}}function Ha(b,a){for(var c=0,d=G[b].length;c<d;c++)if(G[b][c]===a)return c;return-1}function Ia(b){return Math.round(v(b,q.start,q.end)/q.end*(e.end-e.start))+e.start}function Wa(){a.history[0]=a.history[1];a.history[1]=a.history[2];a.history[2]=a.history[3];a.history[3]=a.delta}function Ja(b){a.released=0;a.source=b;a.slidee="slidee"===b}function Ka(b){if(!(a.init||
~l.inArray(b.target.nodeName,La)||l(b.target).is(c.interactive))){var h="touchstart"===b.type,f=b.data.source,g="slidee"===f;if("handle"!==f||c.dragHandle&&q.start!==q.end)if(!g||(h?c.touchDragging:c.mouseDragging&&2>b.which))h||M(b,1),Ja(f),a.init=1,a.$source=l(b.target),a.touch=h,a.pointer=h?b.originalEvent.touches[0]:b,a.initX=a.pointer.pageX,a.initY=a.pointer.pageY,a.initPos=g?e.cur:q.cur,a.start=+new Date,a.time=0,a.path=0,a.delta=0,a.locked=0,a.history=[0,0,0,0],a.pathToLock=g?h?30:10:0,a.initLoc=
a[c.horizontal?"initX":"initY"],a.deltaMin=g?-a.initLoc:-q.cur,a.deltaMax=g?document[c.horizontal?"width":"height"]-a.initLoc:q.end-q.cur,ca.on(h?Ma:Na,Oa),d.pause(1),(g?u:D).addClass(c.draggedClass),A("moveStart"),g&&(Pa=setInterval(Wa,10))}}function Oa(b){a.released="mouseup"===b.type||"touchend"===b.type;a.pointer=a.touch?b.originalEvent[a.released?"changedTouches":"touches"][0]:b;a.pathX=a.pointer.pageX-a.initX;a.pathY=a.pointer.pageY-a.initY;a.path=Math.sqrt(Math.pow(a.pathX,2)+Math.pow(a.pathY,
2));a.delta=v(c.horizontal?a.pathX:a.pathY,a.deltaMin,a.deltaMax);if(!a.locked&&a.path>a.pathToLock)if(a.locked=1,c.horizontal?Math.abs(a.pathX)<Math.abs(a.pathY):Math.abs(a.pathX)>Math.abs(a.pathY))a.released=1;else if(a.slidee)a.$source.on(da,Qa);a.released?(a.touch||M(b),clearInterval(Pa),ca.off(a.touch?Ma:Na,Oa),(a.slidee?u:D).removeClass(c.draggedClass),d.resume(1),e.cur===e.dest&&a.init&&A("moveEnd"),a.init=0,c.releaseSwing&&a.slidee&&(a.swing=300*((a.delta-a.history[0])/40),a.delta+=a.swing,
a.tweese=10<Math.abs(a.swing))):M(b);I(a.slidee?Math.round(a.initPos-a.delta):Ia(a.initPos+a.delta))}function Ra(){d.stop();ca.off("mouseup",Ra)}function ea(b){M(b);switch(this){case Y[0]:case ba[0]:d.moveBy(Y.is(this)?c.moveBy:-c.moveBy);ca.on("mouseup",Ra);break;case Z[0]:d.prev();break;case $[0]:d.next();break;case W[0]:d.prevPage();break;case X[0]:d.nextPage()}}function Xa(b){x.curDelta=b.wheelDelta?-b.wheelDelta/120:(b.detail||b.deltaY)/3;if(!C)return x.curDelta;ya=+new Date;x.last<ya-x.resetTime&&
(x.delta=0);x.last=ya;x.delta+=x.curDelta;1>Math.abs(x.delta)?x.finalDelta=0:(x.finalDelta=Math.round(x.delta/1),x.delta%=1);return x.finalDelta}function Ya(b){c.scrollBy&&e.start!==e.end&&(M(b,1),d.slideBy(c.scrollBy*Xa(b.originalEvent)))}function Za(b){c.clickBar&&b.target===K[0]&&(M(b),I(Ia((c.horizontal?b.pageX-K.offset().left:b.pageY-K.offset().top)-N/2)))}function $a(b){if(c.keyboardNavBy)switch(b.which){case c.horizontal?37:38:M(b);d["pages"===c.keyboardNavBy?"prevPage":"prev"]();break;case c.horizontal?
39:40:M(b),d["pages"===c.keyboardNavBy?"nextPage":"next"]()}}function ab(b){~l.inArray(this.nodeName,La)||l(this).is(c.interactive)?b.stopPropagation():this.parentNode===u[0]&&d.activate(this)}function bb(){this.parentNode===V[0]&&d.activatePage(ga.index(this))}function cb(b){if(c.pauseOnHover)d["mouseenter"===b.type?"pause":"resume"](2)}function A(b,a){if(G[b]){za=G[b].length;for(P=Aa.length=0;P<za;P++)Aa.push(G[b][P]);for(P=0;P<za;P++)Aa[P].call(d,b,a)}}var c=l.extend({},la.defaults,k),d=this,H=
O(f),E=l(f),u=E.children().eq(0),z=0,t=0,e={start:0,center:0,end:0,cur:0,dest:0},K=l(c.scrollBar).eq(0),D=K.children().eq(0),S=0,N=0,q={start:0,end:0,cur:0},V=l(c.pagesBar),ga=0,w=[],F=0,n=[],g={firstItem:0,lastItem:0,centerItem:0,activeItem:-1,activePage:0};k="basic"===c.itemNav;var T="forceCentered"===c.itemNav,L="centered"===c.itemNav||T,C=!H&&(k||L||T),Sa=c.scrollSource?l(c.scrollSource):E,db=c.dragSource?l(c.dragSource):E,Y=l(c.forward),ba=l(c.backward),Z=l(c.prev),$=l(c.next),W=l(c.prevPage),
X=l(c.nextPage),G={},r={};ma=sa=B=ra=s=qa=R=y=void 0;var p={},a={released:1},x={last:0,delta:0,resetTime:200},U=0,Pa=0,Q=0,Fa=0,P,za;H||(f=E[0]);d.initialized=0;d.frame=f;d.slidee=u[0];d.pos=e;d.rel=g;d.items=n;d.pages=w;d.isPaused=0;d.options=c;d.dragging=a;d.reload=aa;d.getPos=function(b){if(C)return b=pa(b),-1!==b?n[b]:!1;var a=u.find(b).eq(0);return a[0]?(b=c.horizontal?a.offset().left-u.offset().left:a.offset().top-u.offset().top,a=a[c.horizontal?"outerWidth":"outerHeight"](),{start:b,center:b-
z/2+a/2,end:b-z+a,size:a}):!1};d.moveBy=function(b){p.speed=b;!a.init&&(p.speed&&e.cur!==(0<p.speed?e.end:e.start))&&(p.lastTime=+new Date,p.startPos=e.cur,Ja("button"),a.init=1,A("moveStart"),ka(Fa),Ea())};d.stop=function(){"button"===a.source&&(a.init=0,a.released=1)};d.prev=function(){d.activate(g.activeItem-1)};d.next=function(){d.activate(g.activeItem+1)};d.prevPage=function(){d.activatePage(g.activePage-1)};d.nextPage=function(){d.activatePage(g.activePage+1)};d.slideBy=function(b,a){if(b)if(C)d[L?
"toCenter":"toStart"](v((L?g.centerItem:g.firstItem)+c.scrollBy*b,0,n.length));else I(e.dest+b,a)};d.slideTo=function(b,a){I(b,a)};d.toStart=function(b,a){wa("start",b,a)};d.toEnd=function(b,a){wa("end",b,a)};d.toCenter=function(b,a){wa("center",b,a)};d.getIndex=pa;d.activate=function(b,e){var f=oa(b);c.smart&&!1!==f&&(L?d.toCenter(f,e):f>=g.lastItem?d.toStart(f,e):f<=g.firstItem?d.toEnd(f,e):a.released&&!d.isPaused&&d.resume())};d.activatePage=function(b,a){O(b)&&I(w[v(b,0,w.length-1)],a)};d.resume=
function(b){!c.cycleBy||(!c.cycleInterval||"items"===c.cycleBy&&!n[0]||b<d.isPaused)||(d.isPaused=0,Q?Q=clearTimeout(Q):A("resume"),Q=setTimeout(function(){A("cycle");switch(c.cycleBy){case "items":d.activate(g.activeItem>=n.length-1?0:g.activeItem+1);break;case "pages":d.activatePage(g.activePage>=w.length-1?0:g.activePage+1)}},c.cycleInterval))};d.pause=function(b){b<d.isPaused||(d.isPaused=b||100,Q&&(Q=clearTimeout(Q),A("pause")))};d.toggle=function(){d[Q?"pause":"resume"]()};d.set=function(b,
a){l.isPlainObject(b)?l.extend(c,b):c.hasOwnProperty(b)&&(c[b]=a)};d.add=function(b,a){var c=l(b);C?(null!=a&&n[0]?n.length&&c.insertBefore(n[a].el):c.appendTo(u),a<=g.activeItem&&(r.active=g.activeItem+=c.length)):u.append(c);aa()};d.remove=function(b){if(C){if(b=xa(b),-1<b){F.eq(b).remove();var a=b===g.activeItem;b<g.activeItem&&(r.active=--g.activeItem);aa();a&&(r.active=null,d.activate(g.activeItem))}}else l(b).remove(),aa()};d.moveAfter=function(b,a){Ga(b,a,1)};d.moveBefore=function(b,a){Ga(b,
a)};d.on=function(b,a){if("object"===ja(b))for(var c in b){if(b.hasOwnProperty(c))d.on(c,b[c])}else if("function"===ja(a)){c=b.split(" ");for(var e=0,f=c.length;e<f;e++)G[c[e]]=G[c[e]]||[],-1===Ha(c[e],a)&&G[c[e]].push(a)}else if("array"===ja(a))for(c=0,e=a.length;c<e;c++)d.on(b,a[c])};d.one=function(b,a){function c(){a.apply(d,arguments);d.off(b,c)}d.on(b,c)};d.off=function(b,a){if(a instanceof Array)for(var c=0,e=a.length;c<e;c++)d.off(b,a[c]);else for(var c=b.split(" "),e=0,f=c.length;e<f;e++)if(G[c[e]]=
G[c[e]]||[],null==a)G[c[e]].length=0;else{var g=Ha(c[e],a);-1!==g&&G[c[e]].splice(g,1)}};d.destroy=function(){ca.add(Sa).add(D).add(K).add(V).add(Y).add(ba).add(Z).add($).add(W).add(X).unbind("."+m);Z.add($).add(W).add(X).removeClass(c.disabledClass);F&&F.eq(g.activeItem).removeClass(c.activeClass);V.empty();H||(E.unbind("."+m),u.add(D).css(J||(c.horizontal?"left":"top"),J?"none":0),l.removeData(f,m));d.initialized=0;return d};d.init=function(){if(!d.initialized){d.on(Va);var a=D;H||(a=a.add(u),E.css("overflow",
"hidden"),J||"static"!==E.css("position")||E.css("position","relative"));J?ia&&a.css(J,ia):("static"===K.css("position")&&K.css("position","relative"),a.css({position:"absolute"}));if(c.forward)Y.on(Ta,ea);if(c.backward)ba.on(Ta,ea);if(c.prev)Z.on(da,ea);if(c.next)$.on(da,ea);if(c.prevPage)W.on(da,ea);if(c.nextPage)X.on(da,ea);Sa.on("DOMMouseScroll."+m+" mousewheel."+m,Ya);if(K[0])K.on(da,Za);if(C&&c.activateOn)E.on(c.activateOn+"."+m,"*",ab);if(V[0]&&c.activatePageOn)V.on(c.activatePageOn+"."+m,
"*",bb);db.on(Ua,{source:"slidee"},Ka);if(D)D.on(Ua,{source:"handle"},Ka);ca.bind("keydown."+m,$a);H||(E.on("mouseenter."+m+" mouseleave."+m,cb),E.on("scroll."+m,eb));aa();if(c.cycleBy&&!H)d[c.startPaused?"pause":"resume"]();d.initialized=1;return d}}}function ja(f){return null==f?String(f):"object"===typeof f||"function"===typeof f?Object.prototype.toString.call(f).match(/\s([a-z]+)/i)[1].toLowerCase()||"object":typeof f}function M(f,k){f.preventDefault();k&&f.stopPropagation()}function Qa(f){M(f,
1);l(this).off(f.type,Qa)}function eb(){this.scrollTop=this.scrollLeft=0}function O(f){return!isNaN(parseFloat(f))&&isFinite(f)}function na(f,k){return 0|Math.round(String(f.css(k)).replace(/[^\-0-9.]/g,""))}function v(f,k,l){return f<k?k:f>l?l:f}var m="sly",ka=B.cancelAnimationFrame||B.cancelRequestAnimationFrame,ha=B.requestAnimationFrame,J,ia,ca=l(document),Ua="touchstart."+m+" mousedown."+m,Na="mousemove."+m+" mouseup."+m,Ma="touchmove."+m+" touchend."+m,da="click."+m,Ta="mousedown."+m,La=["INPUT",
"SELECT","BUTTON","TEXTAREA"],Aa=[],ya;(function(f){for(var k=["moz","webkit","o"],l=0,m=0,R=k.length;m<R&&!ka;++m)ha=(ka=f[k[m]+"CancelAnimationFrame"]||f[k[m]+"CancelRequestAnimationFrame"])&&f[k[m]+"RequestAnimationFrame"];ka||(ha=function(k){var m=+new Date,y=Math.max(0,16-(m-l));l=m+y;return f.setTimeout(function(){k(m+y)},y)},ka=function(f){clearTimeout(f)})})(window);(function(){function f(f){for(var m=0,v=k.length;m<v;m++){var s=k[m]?k[m]+f.charAt(0).toUpperCase()+f.slice(1):f;if(null!=l.style[s])return s}}
var k=["","webkit","moz","ms","o"],l=document.createElement("div");J=f("transform");ia=f("perspective")?"translateZ(0) ":""})();B.Sly=la;l.fn.sly=function(f,k){var v,y;if(!l.isPlainObject(f)){if("string"===ja(f)||!1===f)v=!1===f?"destroy":f,y=Array.prototype.slice.call(arguments,1);f={}}return this.each(function(J,B){var s=l.data(B,m);s||v?s&&v&&s[v]&&s[v].apply(s,y):l.data(B,m,(new la(B,f,k)).init())})};la.defaults={horizontal:0,itemNav:null,itemSelector:null,smart:0,activateOn:null,activateMiddle:0,
scrollSource:null,scrollBy:0,dragSource:null,mouseDragging:0,touchDragging:0,releaseSwing:0,swingSpeed:0.2,elasticBounds:0,interactive:null,scrollBar:null,dragHandle:0,dynamicHandle:0,minHandleSize:50,clickBar:0,syncSpeed:0.5,pagesBar:null,activatePageOn:null,pageBuilder:function(f){return"<li>"+(f+1)+"</li>"},forward:null,backward:null,prev:null,next:null,prevPage:null,nextPage:null,cycleBy:null,cycleInterval:5E3,pauseOnHover:0,startPaused:0,moveBy:300,speed:0,easing:"swing",startAt:0,keyboardNavBy:null,
draggedClass:"dragged",activeClass:"active",disabledClass:"disabled"}})(jQuery,window);