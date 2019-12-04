create or replace package gruppo2 as
    TYPE list_idaree is varray(2) of number(1);
    procedure autorimessanontrovata(id_sessione int default 0, nome varchar2, ruolo varchar2);
    procedure competentGarageSearch2 (id_Sessione varchar2, nome varchar2, ruolo varchar2, idSedeCorrente integer, idVeicoloCorrente integer);
    procedure formRicercaArea(id_Sessione int, nome varchar2, ruolo varchar2);
    procedure introitiparziali(id_Sessione varchar2, nome varchar2, ruolo varchar2, idsedecorrente varchar2, periodo varchar2, datainiziale varchar2, datafinale varchar2);
    procedure graphicResultRicercaArea(id_Sessione int, nome varchar2, ruolo varchar2, autorimessa number, veicolo varchar2);
    procedure introiti(id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure modificaArea(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    procedure modificaAutorimessa(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    procedure modificaSede(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    function queryRicercaArea(id_Sessione int, nome varchar2, ruolo varchar2, autorimessa varchar2, veicolo varchar2) return list_idaree;
    procedure resSediSovrappopolate(id_Sessione varchar2, nome varchar2, ruolo varchar2, var_giorno varchar2, var_soglia number);
    procedure ricercaAutorimessa(id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure classificaSediPiuRedditizie(id_sessione int default 0, nome varchar2, ruolo varchar2);
    procedure statisticaalimentazione(id_sessione varchar2,nome varchar2, ruolo varchar2);
    procedure updateArea(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int, var_posti_totali Aree.PostiTotali%TYPE, var_posti_liberi Aree.PostiLiberi%TYPE, var_stato Aree.Stato%TYPE, var_gas Aree.Gas%TYPE, var_lunghezza_max Aree.LunghezzaMax%TYPE, var_larghezza_max Aree.LarghezzaMax%TYPE, var_peso_max Aree.PesoMax%TYPE, var_costo_abbonamento Aree.CostoAbbonamento%TYPE);
    procedure updateAutorimessa(
        id_sessione int default 0,
        nome varchar2,
        ruolo varchar2,
        idRiga int,
        var_indirizzo Autorimesse.Indirizzo%TYPE,
        var_telefono Autorimesse.Telefono%TYPE,
        var_coordinate Autorimesse.Coordinate%TYPE
    );
    procedure updateSede(
        id_sessione int default 0,
        nome varchar2,
        ruolo varchar2,
        idRiga int,
        var_indirizzo Sedi.Indirizzo%TYPE,
        var_telefono Sedi.Telefono%TYPE,
        var_coordinate Sedi.Coordinate%TYPE
    );
    procedure visualizzaArea(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    procedure visualizzaAutorimessa(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    procedure visualizzaBox(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    procedure visualizzaintroitiparzialiabb(id_Sessione varchar2, nome varchar2, ruolo varchar2, idriga varchar2, periodo varchar2, datainiziale varchar2 default null, datafinale varchar2 default null);
    procedure visualizzaSede(id_sessione int default 0, nome varchar2, ruolo varchar2, idRiga int);
    
    procedure MaxTipoVeicolo(id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure PercentualiPostiLiberi (id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure PercentualiPostiLiberi2(id_Sessione varchar2, nome varchar2, ruolo varchar2, modalita varchar2, areaScelta varchar2);
    procedure MaggiorPostiRiservati(id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure AlimentazioneVeicolo(id_Sessione varchar2, nome varchar2, ruolo varchar2);
    procedure AlimentazioneVeicolo2(id_Sessione varchar2, nome varchar2, ruolo varchar2, autorimessaScelta varchar2);
    
end gruppo2;
