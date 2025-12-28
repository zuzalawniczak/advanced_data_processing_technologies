(:zadanie 27:)

(:for $k in doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT/swiat.xml')/SWIAT/KRAJE/KRAJ:)
(:return <KRAJ>:)
(: {$k/NAZWA, $k/STOLICA}:)
(:</KRAJ>:)

(:ZADANIE 28:)

(:for $k in doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT/swiat.xml')/SWIAT/KRAJE/KRAJ[starts-with(NAZWA, 'A')]:)
(:return <KRAJ>:)
(: {$k/NAZWA, $k/STOLICA}:)
(:</KRAJ>:)


(:zadanie 29:)
(:for $k in doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT/swiat.xml')/SWIAT/KRAJE/KRAJ[substring(NAZWA,1,1)=substring(STOLICA,1,1)]:)
(:return <KRAJ>:)
(: {$k/NAZWA, $k/STOLICA}:)
(:</KRAJ>:)

(:ZADANIE 30:)
(:for $k in doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT/swiat.xml')//KRAJ[substring(NAZWA,1,1)=substring(STOLICA,1,1)]:)
(:return <KRAJ>:)
(: {$k/NAZWA, $k/STOLICA}:)
(:</KRAJ>:)

(:ZADANIE 32:)

(:doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT//zesp_prac.xml')/ZESPOLY/ROW/PRACOWNICY/ROW/NAZWISKO:)

(:ZADANIE 33:)
(:doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT//zesp_prac.xml')/ZESPOLY/ROW[NAZWA='SYSTEMY EKSPERCKIE']/PRACOWNICY/ROW/NAZWISKO/text():)

(:zadanie 34:)
(:doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT//zesp_prac.xml')/ZESPOLY/ROW[ID_ZESP=10]/PRACOWNICY/count(ROW):)

(:zaDANIE 35:)
(:doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT//zesp_prac.xml')/ZESPOLY/ROW/PRACOWNICY/ROW[ID_SZEFA=100]/NAZWISKO:)

(:ZADaNIE 36:)
sum(doc('file:///I:/studia/SEMESTR9/ZTPD/XPath-XSLT.zip/XPath-XSLT//zesp_prac.xml')/ZESPOLY/ROW[PRACOWNICY/ROW/NAZWISKO='BRZEZINSKI']/PRACOWNICY/ROW/PLACA_POD)

