Feature: JDBC Quers_1


# Database üzerinden ambulance_call tablosundaki patient_id = 1 olan
# hastanin driver'i Smith olan ambulance ile 2 defa sevkinin gerceklestigini dogrulayiniz

  @t113
  Scenario: ambulance_call tablosundaki patient_id = 1 olan hastanin driver'i Smith olan ambulance ile 2 defa sevkinin gerceklestigini dogrulayiniz

    * Database baglantisi kurulur.
    * Query hazirlanir
    * Query calistirilir ve sonuclari alinir
    * Query sonuclari dogrulanir
    * Database baglantisi kapatilir.












