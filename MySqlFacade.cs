using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TankstelleWinForm
{
    public static class Repository
    {
        public const string QueryTankstelle = @"select k.kun_id Kundennummer, 
                                                       k.kun_vname Vorname, 
                                                       k.kun_nname Nachname, 
                                                       k.kun_strasse Strasse, 
                                                       k.kun_plz PLZ, k.kun_ort Ort, 
                                                       k.kun_geb Geburtsdatum,
                                                       sum(v.menge),
                                                       sum(v.preis)
                                                from kunde k, verbrauch v
                                                where k.kun_id = @kunId
                                                and k.kun_id = v.kun_id
                                                group by k.kun_id";

        public const string ConnectionString = @"datasource=localhost;uid=julia1;pwd=test1;database=tankstelle;";
    }
}
