function FahrenheitConvert(valNum){
    valNum = parseFloat(valNum);
    let fcval = (valNum-32)/1.8;
    let fkval = ((valNum-32)/1.8)+273.15;

    //decimal 
    let fc = parseFloat(fcval).toFixed(2)
    let fk = parseFloat(fkval).toFixed(2)

    document.getElementById("FCelcius").innerHTML=fc
    document.getElementById("FKelvin").innerHTML=fk

}
function CelsiusConvert(valNum){
    valNum = parseFloat(valNum);
    let cfval = (valNum*1.8)+32;
    let ckval = valNum+273.15;

    //decimal
    let cf = parseFloat(cfval).toFixed(2)
    let ck = parseFloat(ckval).toFixed(2)

    document.getElementById("CFahrenheit").innerHTML=cf
    document.getElementById("CKelvin").innerHTML=ck
}
function KelvinConvert(valNum){
    valNum = parseFloat(valNum);
    let kfval = ((valNum-273.15)*1.8)+32
    let kcval = valNum-273.15
    
    //decimal
    let kf = parseFloat(kfval).toFixed(2)
    let kc = parseFloat(kcval).toFixed(2)

    document.getElementById("KFahrenheit").innerHTML=kf;
    document.getElementById("KCelsius").innerHTML=kc;

}
function MPHConvert(valNum){
    valNum = parseFloat(valNum);
    let MPHKPHval = valNum*1.609344
    let MPHKnotsval = valNum/1.150779
    let MPHMachval = valNum/761.207

    //decimal
    let MPHKPh = parseFloat(MPHKPHval).toFixed(2)
    let MPHKnots = parseFloat(MPHKnotsval).toFixed(2)
    let MPHMach = parseFloat(MPHMachval).toFixed(2)

    document.getElementById("MPH-KPH").innerHTML=MPHKPh;
    document.getElementById("MPH-Knots").innerHTML=MPHKnots;
    document.getElementById("MPH-Mach").innerHTML=MPHMach;
    
}
function KPHConvert(valNum){
    valNum = parseFloat(valNum);
    let KPHMPHval = valNum/1.609344
    let KPHKnotsval = valNum/1.852
    let KPHMachval = valNum/1225.044

    //decimal
    let KPHMPH = parseFloat(KPHMPHval).toFixed(2)
    let KPHKnots = parseFloat(KPHKnotsval).toFixed(2)
    let KPHMach = parseFloat(KPHMachval).toFixed(2)

    document.getElementById("KPH-MPH").innerHTML=KPHMPH;
    document.getElementById("KPH-Knots").innerHTML=KPHKnots;
    document.getElementById("KPH-Mach").innerHTML=KPHMach;
    
}
function KnotsConvert(valNum){
    valNum = parseFloat(valNum);
    let KnotsMPHval = valNum*1.150779
    let KnotsKPHval = valNum/1.852
    let KnotsMachval = valNum/661.4708

    //decimal
    let KnotsMPH = parseFloat(KnotsMPHval).toFixed(2)
    let KnotsKPH = parseFloat(KnotsKPHval).toFixed(2)
    let KnotsMach = parseFloat(KnotsMachval).toFixed(2)

    document.getElementById("Knots-MPH").innerHTML=KnotsMPH;
    document.getElementById("Knots-KPH").innerHTML=KnotsKPH;
    document.getElementById("Knots-Mach").innerHTML=KnotsMach;
    
}
function MachConvert(valNum){
    valNum = parseFloat(valNum);
    let MachMPHval = valNum*761.207
    let MachKPHval = valNum*1225.044
    let MachKnotsval = valNum*661.4708

    //decimal
    let MachMPH = parseFloat(MachMPHval).toFixed(2)
    let MachKPH = parseFloat(MachKPHval).toFixed(2)
    let MachKnots = parseFloat(MachKnotsval).toFixed(2)

    document.getElementById("Mach-MPH").innerHTML=MachMPH;
    document.getElementById("Mach-KPH").innerHTML=MachKPH;
    document.getElementById("Mach-Knots").innerHTML=MachKnots;
    
}