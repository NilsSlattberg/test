%Generating corr stats for table (seasonal, morning. Ta and Rel humid.)

Springtemp=(AirTemp(Month==3 | Month==4 | Month==5));
SpringtempMorning=(AirTemp(HourSpring==7|HourSpring==8|HourSpring==9));

Summertemp=(AirTemp(Month==6 | Month==7 | Month==8));
SummertempMorning=(AirTemp(HourSummer==7|HourSummer==8|HourSummer==9));

Autumntemp=(AirTemp(Month==9 | Month==10 | Month==11));
AutumntempMorning=(AirTemp(HourAutumn==7|HourAutumn==8|HourAutumn==9));

Wintertemp=(AirTemp(Month==12 | Month==1 | Month==2));
WintertempMorning=(AirTemp(HourWinter==7|HourWinter==8|HourWinter==9));


SpringRH=(RelHumid(Month==3 | Month==4 | Month==5));
SpringRHMorning=(RelHumid(HourSpring==7|HourSpring==8|HourSpring==9));

SummerRH=(RelHumid(Month==6 | Month==7 | Month==8));
SummerRHMorning=(RelHumid(HourSummer==7|HourSummer==8|HourSummer==9));

AutumnRH=(RelHumid(Month==9 | Month==10 | Month==11));
AutumnRHMorning=(RelHumid(HourAutumn==7|HourAutumn==8|HourAutumn==9));

WinterRH=(RelHumid(Month==12 | Month==1 | Month==2));
WinterRHMorning=(RelHumid(HourWinter==7|HourWinter==8|HourWinter==9));


%%
[r_TaSpringMorning,p_TaSpringMorning] = corr(SpringtempMorning,PM10SpringMorning)
[r_TaSummerMorning,p_TaSummerMorning] = corr(SummertempMorning,PM10SummerMorning)
[r_TaAutumnMorning,p_TaAutumnMorning] = corr(AutumntempMorning,PM10AutumnMorning)
[r_TaWinterMorning,p_TaWinterMorning] = corr(WintertempMorning,PM10WinterMorning)

[r_RHSpringMorning,p_RHSpringMorning]= corr(SpringRHMorning,PM10SpringMorning)
[r_RHSummerMorning,p_RHSummerMorning]= corr(SummerRHMorning,PM10SummerMorning)
[r_RHAutumnMorning,p_RHAutumnMorning]= corr(AutumnRHMorning,PM10AutumnMorning)
[r_RHWinterMorning,p_RHWinterMorning]= corr(WinterRHMorning,PM10WinterMorning)
