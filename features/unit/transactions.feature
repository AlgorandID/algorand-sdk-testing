@unit.transactions
@unit
Feature: Transaction goldens
  Background:
    Given a signing account with address "BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4" and mnemonic "awful drop leaf tennis indoor begin mandate discover uncle seven only coil atom any hospital uncover make any climb actor armed measure need above hundred"

  Scenario Outline: Application Transaction Tests (<operation>)
    When I build an application transaction with operation "<operation>", application-id <application-id>, sender "<sender>", approval-program "<approval-prog-file>", clear-program "<clear-prog-file>", global-bytes <global-bytes>, global-ints <global-ints>, local-bytes <local-bytes>, local-ints <local-ints>, app-args "<app-args>", foreign-apps "<foreign-apps>", app-accounts "<app-accounts>", fee <fee>, first-valid <first-valid>, last-valid <last-valid>, genesis-hash "<genesis-hash>"
    And sign the transaction
    Then the base64 encoded signed transaction should equal "<golden>"
    Examples:
      | operation | application-id | sender                                                     | approval-prog-file         | clear-prog-file            | global-bytes | global-ints | local-bytes | local-ints | app-args       | foreign-apps | app-accounts                                                                                                          | fee  | first-valid | last-valid | genesis-hash                                 | golden                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
      | create    | 0              | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/loccheck.teal.tok | programs/one.teal.tok      | 1            | 0           | 1           | 0          | str:test       | 5555,6666    |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQPLVQDq4zk6OlNsvUYlC7AzS5lq0UvE+dm1H447rR3HYoWbXGF/EnBAc79OgyFu9eYOjo6hy7ITQ4mF/zPqInwejdHhujKRhcGFhkcQEdGVzdKRhcGFwxFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAApGFwZmGSzRWzzRoKpGFwZ3OBo25icwGkYXBsc4GjbmJzAaRhcHN1xAUCIAEBIqNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                             |
      | create    | 0              | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok     | programs/one.teal.tok      | 1            | 0           | 1           | 0          | str:test       |              | AAZFG7YLUHOQ73J7UR7TPJA634OIDL5GIEURTW2QXN7VBRI7BDZCVN6QTI                                                            | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQIrVQU7Fe1kB2rPbu8KMBWzeWOgLQxIv62XSXK5CDHHw2s0fLPqEqinMb8GU8vY+uKwdThbPn2Hywr3D08FmQgajdHhujKRhcGFhkcQEdGVzdKRhcGFwxAUCIAEAIqRhcGF0kcQgADJTfwuh3Q/tP6R/N6Qe3xyBr6ZBKRnbULt/UMUfCPKkYXBnc4GjbmJzAaRhcGxzgaNuYnMBpGFwc3XEBQIgAQEio2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                                         |
      | create    | 0              | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/loccheck.teal.tok | programs/one.teal.tok      | 1            | 0           | 1           | 0          | str:test       | 5555,6666    |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQPLVQDq4zk6OlNsvUYlC7AzS5lq0UvE+dm1H447rR3HYoWbXGF/EnBAc79OgyFu9eYOjo6hy7ITQ4mF/zPqInwejdHhujKRhcGFhkcQEdGVzdKRhcGFwxFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAApGFwZmGSzRWzzRoKpGFwZ3OBo25icwGkYXBsc4GjbmJzAaRhcHN1xAUCIAEBIqNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                             |
      | create    | 0              | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok     | programs/one.teal.tok      | 1            | 0           | 1           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQGBIfB27+G8Z+XeH7RVhDVR/FvEF8+sZDytZ7j5PuVq6ybGZ5xkQdcezp5tdVZIU7O1j17Czerz611hHwO9gxgejdHhui6RhcGFhkcQEdGVzdKRhcGFwxAUCIAEAIqRhcGdzgaNuYnMBpGFwbHOBo25icwGkYXBzdcQFAiABASKjZmVlzQTSomZ2zSMoomdoxCA+sQZLbE15TUmWBpHzYnn8DK2BztqKttoTQwbf5G0N8aJsds0jMqNzbmTEIAn70nYsCPhsWua/bdenqQHeZnXXUOB+jFx2mGR9tuH9pHR5cGWkYXBwbA==                                                                                                                                                             |
      | update    | 123            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/one.teal.tok      | programs/zero.teal.tok     | 0            | 0           | 0           | 0          | str:test       | 5555,6666    |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQDftG6AraaY3Iy2zPf9bLoApXDn7FX3jc95FOcl7MVpWagI3ezGNeMGgojTuJj0NLtkKLTEomTSYn1Ps8w9QMwqjdHhujKRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEBIqRhcGZhks0Vs80aCqRhcGlke6RhcHN1xAUCIAEAIqNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                             |
      | update    | 456            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok     | programs/loccheck.teal.tok | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQKJejLM/MIYAu99y+LEbdhuu0P+FH9RLxOeGL2VQ8AqivlaSX/ZadFkptvjFsemdxEHFpm9dkuIksVOoBCK9PwSjdHhui6RhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEAIqRhcGlkzQHIpGFwc3XEWwIgAgABJgUFaGVsbG8Fd3JpdGUFY2hlY2sDZm9vA2JhcjYaACgSQAAoNhoAKRJAABc2GgAqEiIiK2MiEkAAFzYaARIQI0AAEyIrJwRmI0AAACMjQAAFIiNAAACjZmVlzQTSomZ2zSMoomdoxCA+sQZLbE15TUmWBpHzYnn8DK2BztqKttoTQwbf5G0N8aJsds0jMqNzbmTEIAn70nYsCPhsWua/bdenqQHeZnXXUOB+jFx2mGR9tuH9pHR5cGWkYXBwbA==                                                     |
      | update    | 123            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/one.teal.tok      | programs/zero.teal.tok     | 0            | 0           | 0           | 0          | str:test       | 5555,6666    |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQDftG6AraaY3Iy2zPf9bLoApXDn7FX3jc95FOcl7MVpWagI3ezGNeMGgojTuJj0NLtkKLTEomTSYn1Ps8w9QMwqjdHhujKRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEBIqRhcGZhks0Vs80aCqRhcGlke6RhcHN1xAUCIAEAIqNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                             |
      | update    | 456            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok     | programs/loccheck.teal.tok | 0            | 0           | 0           | 0          | str:test       |              | AAZFG7YLUHOQ73J7UR7TPJA634OIDL5GIEURTW2QXN7VBRI7BDZCVN6QTI                                                            | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQBV88E1JGcPDD4vj6oDOQMSJTtbRQNan5tGQfqnsuMb5KAA4ILCx+RLrpdvXHLlQ6ti0DTRkNsq+CYa+LNIj4gyjdHhujKRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEAIqRhcGF0kcQgADJTfwuh3Q/tP6R/N6Qe3xyBr6ZBKRnbULt/UMUfCPKkYXBpZM0ByKRhcHN1xFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAAo2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | call      | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       | 5555,6666    | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQB+2V1ABIktjH1hoU3KVz9JcuFrhjMsyTGzFrXE9do6U1YuXnnqlAObfjRiwRoAGYXQFhf+i8ONIjNyLkEmP/wCjdHhuiqRhcGFhkcQEdGVzdKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                                 |
      | call      | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQGyiEW6r2Z/Th3nTcduJLpjSURniD4WDxAIHSzp8QmCmfu3QP4azima7czFLcxH63xrx+0aEJaUfsItalEkqYg2jdHhuiKRhcGFhkcQEdGVzdKRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                                                                                     |
      | optin     | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       | 5555,6666    | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQKcfaupymr8M8kL+46OJ+D3bDxfi1uG+jrfIcOs5VqmzdgmgOuYDV0f3YiEWYFH5kebs55i+j8z98ZfOjC3kJQ+jdHhui6RhcGFhkcQEdGVzdKRhcGFuAaRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                         |
      | optin     | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQESsHmC0HrlWsYY/FLDlObTJF28hyUfIuzWzXJKb4GPUkr12QgCMwciLU04BgzSEutLyAtUtCXXPB6tJLf0YPgijdHhuiaRhcGFhkcQEdGVzdKRhcGFuAaRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                                                                             |
      | clear     | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       | 5555,6666    | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQJFcJzeWzFb6SI7qeliXXQn+qm0VM/7DWzpmaTrNTaX5y56EpINQ74AUR3+tDhuHsaJCfsVexYtIFvFrYNLzJwKjdHhui6RhcGFhkcQEdGVzdKRhcGFuA6RhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                         |
      | clear     | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQFsfIKdtBcANwtSy0gty5WkhdR+2cUHJs5fyoWGjuZ96/XF1rn6O77xp9RZDljh0xLIHa+WG1zvkVjSHMusxvgejdHhuiaRhcGFhkcQEdGVzdKRhcGFuA6RhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                                                                             |
      | closeout  | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       | 5555,6666    | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQIQK7VKCzFHhFxN0kXMZdskzJqFADtv/GzPyEZkW7+3jgCO874wU3h3ZKJKN12qaZyF/RENdE+jqUtpDUoZfEwCjdHhui6RhcGFhkcQEdGVzdKRhcGFuAqRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                         |
      | closeout  | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQAY1U5VFOlSX/oZEWqCHKSg74YMMj+28Uw8cjF+Ydf+CpH8D7gYQ39J6+IeHRZz4yO33pUTQIhNTsv4vurAXXA+jdHhuiaRhcGFhkcQEdGVzdKRhcGFuAqRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                                                                             |
      | delete    | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       | 5555,6666    | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQKEMNLJVW53WU+KkrAfPCmDIGTDpn6adRglhqGiIPCiMlf/PrXiZuzhAreQ7+dhyF6QLUXJg3YZvkTpbNTWVOwijdHhui6RhcGFhkcQEdGVzdKRhcGFuBaRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgPrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfGibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw=                                                                                         |
      | delete    | 100            | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 |                            |                            | 0            | 0           | 0           | 0          | str:test       |              |                                                                                                                       | 1234 | 9000        | 9010       | PrEGS2xNeU1JlgaR82J5/Aytgc7airbaE0MG3+RtDfE= | gqNzaWfEQM1o7CkR5dXEt4ZxjQDFp6GKPIdZhpvDgAxKdJhUciHrcxM99EHqk8gA/dKvryRPJebZyPFPqt88jIEb9XcoDgujdHhuiaRhcGFhkcQEdGVzdKRhcGFuBaRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEID6xBktsTXlNSZYGkfNiefwMrYHO2oq22hNDBt/kbQ3xomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs                                                                                                                                                                                                             |
