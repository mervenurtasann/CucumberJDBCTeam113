Feature: JDBC Query_2

  # Database uzerinde hastane sistemine gerekli
  # bilgiler girilerek randevu alinabildigini dogrulayiniz
  @t113
  Scenario: hastane sistemine gerekli bilgiler girilerek randevu alinabildigini dogrulayiniz

    * Database baglantisi kurulur.
    * Updadate Query'si hazirlanir.
    * Sonuclar alinir ve dogrulanir.
    * Database baglantisi kapatilir