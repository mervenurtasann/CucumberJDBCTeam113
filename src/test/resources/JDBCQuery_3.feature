Feature: JDBC Query_3

  # Database üzerinden doctor_shift tablosunda staff_id=2 olan
  # doctorun sali gunu kac saat calistigini dgorulayiniz. (2)

  Scenario: doctor_shift tablosunda staff_id=2 olan doctorun sali gunu kac saat calistigini dgorulayiniz.

    * Database baglantisi kurulur.
    * Query hazirlanir
    * Query calistirilir ve sonuclari alinir
    * Query sonuclari dogrulanir
    * Database baglantisi kapatilir