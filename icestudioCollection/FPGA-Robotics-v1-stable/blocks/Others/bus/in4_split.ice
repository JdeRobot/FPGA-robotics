{
  "version": "1.2",
  "package": {
    "name": "4bits_split",
    "version": "1.0",
    "description": "split bits from a bus of 4 bits",
    "author": "Felipe Machado",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22308.284%22%20height=%22314.401%22%20viewBox=%220%200%2081.566879%2083.185188%22%3E%3Cg%20transform=%22translate(-.575%20-7.846)%22%3E%3Cimage%20y=%2216.948%22%20x=%22.575%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAEYCAYAAACHjumMAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzsnXWcVNX7x98T28EGsLvkwtId0iCNSioKyNfATtSf2PX92ondhYGKYCKCIt3d3UtvL9sx9fvj%20iAJ7z52Z3Zk7M7v3/XrtS5xz584zM3c+95znPGFwOBwOdHR0dLyA0dcG6OjoVF90gdHR0fEausDo%206Oh4DV1gdHR0vIYuMDo6Ol5DFxgdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6Ojo%20eA1dYHR0dLyGLjA6OjpeQxcYHR0dr6ELjI6OjtfQBUZHR8dr6AKjo6PjNXSB0dHR8Rq6wOjo6HgN%20XWB0dHS8hi4wOjo6XkMXGB0dHa9h9rUBOn5AaSmkpUF2NuTkiL/sbCgogLIyMW6xQHm5ON5shqAg%20CAuD0FDx3/h4iIv797+JiRAZ6dv3peNzdIGp7hQWQmoqHDok/o4dE2Jy+jSkp0NGBuTmeue1IyIg%20IQHq1oWkJPHXsCGkpIi/xo2FIOlUWwx647VqhM0GW7bA2rWwaROsWQP794M/f8X160PPntCtG/Tq%20Bd27i1mRTrVAF5hAp6gIliyBP/+EOXPEDCWQqVMHLr0ULrkEhg0T/68TsOgCE4js3w+zZ4u/9euF%20f6S60q4djBkDo0aJ2Y3B4GuLdNxAF5hAoaREzFA+/BCWLvW1Nb6hY0e46y644gp9ZhMg6ALj76xc%20CZ9+Cj//LBy2OmIXa9gwuOUWGDlS7Gjp+CW6wPgjBQXw2WdCWPbs8d7rGAxil6dNG2jeXGwvn/2L%20j4eYGOFwDQ2F4GAICRHPO7tlXVIitrHz8v7d3j77d/gw7N4NJ04I57O3SEyEG2+E++4T70XHr9AF%20xl/IzxeO2t9/F3+e2Do2GKBRI7El3K4dtGgB9eqJreKz28dnRcNbWK2QlSW2xE+cgFOn4MAB2LlT%20iNChQ+KYqhIeDkOHCgfxmDFiS1zH5+gC42v27YNXX4XvvhMBbVUhKAj69YP+/WHAALH1GxbmETO9%20htUKO3bAsmViN2zRIrEzVhUMBrEL9fjj4vPQ8Rm6wPiKQ4fg4Yfhl1+qFqcSFSXu3AMHwpVXBv6d%20+8wZ+O03WLhQ/J0+XbXz9eoF770HXbp4xj4dt9AFRmvKyoR/5emnxdKhMtSuDZdfLpYCgwf7/yyl%20sthsImjw11/hp5/gyJHKnScsDB54QPhpatf2rI06qugCoxV2O0yfDk88ASdPVu4cbdvCI4/A1VfX%20vJ0ThwPmzYPXXoPlyys364uOhgcfFH/VVZT9DF1gtGDlSpg8GbZtc/+5sbEwfjzceit07ep52wKR%20Y8fg889h2jThOHaXevXglVfgmmv0wD0vowuMN8nJgTvvhFmz3H9u27YwZQpMmCCSBnUqYrWKWc1b%20bwkHsbv06AHffw/JyR43TUegC4w3OHMGvvwSpk51bzlUty5cdhlcd53wrei4zqZN8M03wkF8+LDr%20z4uJETeBO+4QW/o6HkUXGE/z9dfw0EOiDIKrtGghfCvXXisC2nSqxh9/wAsvwKpVrj8nNBQee0x8%20D96ODapB6ALjKU6fFhGl8+e7/pwGDcRu0vXX1zynrRb89Rc8+qgoYeEqrVrBt9/q29oeQi+Z6Ql+%20+gk6dHBPXO69V0S03nyzLi7eYtgwsXR67TUwmVx7zt69InbmxRfFzp9OldBnMFVl6lSxJHKVtm3h%20jTfExa+jHXv2wD33iEhhV7nzTvjgA+/ZVAPQBaayWK1ivf7GG64dHxUFzzwjtqv1GYvvmD1bzB5d%20Lcw1ejR89ZVwBuu4jS4wleH0aRg3znUn4rhx8M47IvNXx/eUlMCzz4rZpyuJlo0aiZQO3S/jNroP%20xh2Ki+Gll8QyxxVxGTQINmwQcTC6uPgPYWHie9y/X0RFO+PYMeGXmTxZZIXruIw+g3GVvXtF/s++%20fc6PDQ4Wd8iHHgKjruF+z88/C3+LK6EFsbEwc6ZIMNVxii4wrrB7N/Tt61qNlrZtRc5R587et0vH%20c6SlwU03iRgaZ5jNonaPHgzpFP326oy8PJEL5Iq43H67WBLp4hJ4JCbC3LnCae/MCW+1wsSJcPCg%20NrYFMPoMRo3jx0WFtN271Y8LCxPlLa+5Rhu7dLzLunWisLizWjSxsaL6YO/e2tgVgOgCI2PfPrHO%20Pn5c/bjERBFg16GDNnbpaENGhlgC7dypflxYmPDhXHqpNnYFGLrAKLF7t6gQ58zpFxEhqq717KmN%20XTrakpoKF1/s/CYTHCwcv5dfrolZgYTugzkXux3efluk8TsTl7Fjxd1NF5fqS3KyqBf8wAPqfpny%20clGu9N579dYyF6DPYM5it8OkSSLlX42gIOFvmTRJG7t0/IO1a0WJUmc3nosuEgXMw8O1scvP0Wcw%20Z/niC+fiEhkpChzp4lLz6NlTiIyz4lQbN8Jzz2liUiCgz2BAbDd26yYKRcmIjRXO3G7dtLNLx/84%20dUokqu7aJT/GbBZb3npCqy4wnD4tthlTU+XHREfDihX6TpGOICtLLIWOHpUfExYmNgBq+BZ2zV4i%20FRaKEpVq4gKir44uLjpnqV1bRGur1ZgpKYFRo2p8MF7NFRiLRewEOav0/9BDokaujs659OsnREYt%201ywnR8THZGZqZ5efUTMFJj1dtBZdsEB+TGQkfPyxaOuqo6PExImiLGeDBvJjDh2CPn0q17KmGlDz%20fDBFRWJdvH27/JiICHHh1PD1s46LnDghAvLUOk/GxoodpqZNtbPLD6h5M5ibb1YXF7NZhH7r4qLj%20Kg0aiNlw3bryY3JzRaRvaal2dvkBNUtgfv9dhHSr8eGH+vaijvukpIge2motaXfsEMvuGkTNWSLZ%20bKL1qtpa+JFH4OWXtbNJp/rxww+iG6fsZ5WQIHLd4uK0tctH1JwZzGuvqYtL9+6iVYWOTlUYN04I%20jIz0dLjtNu3s8TE1Ywazdq3YVlQr8Lx0KfTvr5lJ3sMOJelQkgbl2VCWA+U5YMkDWwnYLeCwiUON%20weLPFAohtSE4DkLiIDgewhtCUKRv30qgcviwqGyo5m/5+OMaITTVX2C2bxdb0mlpyuNmswiku/12%20be2qLLZSyN8n/opSofgYFJ+CktNQckr8OVyolO8K5kgIqyfEJiwJwhuIv6gWEN0cIhpRkybBbrF0%20qciwzslRHg8Jge++E7FY1ZjqLTA5OdC+vcgfkfHRR/4tLnYLZKyAjGWQtQYyV4Gt2NdWCUITIWko%201OkLiUMhsomvLfIv1q4V29cWi/J4UJA4phq3Q6neAnPNNeIuIWPiRPVxX2EtguM/wcnfIW0hlLtQ%20D9gfqNUOkoZBw7FQpzdg8LVFvufNN2HKFPl4u3aivW1wsHY2aUj1FZh582DECPl448bC6VurlnY2%20OSNnMxyZDke+Fn6TQCa6NbS6DxqOE36dmordDsOHq/ctf+YZ+O9/tbNJQ6qnwBQUiKWRLNvVZBJr%205L59NTVLkeLjcOQbOPwFFBzwtTWexxgM9S6D5OugwSjx/zWNU6dEsmx2tvJ4cDBs3QqtW2trlwZU%20T4G5/3546y35+KOPis5+vuTMDtj5HBz/FRySNXp1I6w+NLsVWt4LwbG+tkZbfv5ZOH1l9OsnKuEZ%20qteysvoJzOHD0KKFCKxTom1bseYNCdHWrrMUpsK+t+DgJ2Lb2JMExUB0S4hIhsjG/249B8dBSDyY%20wv7emjaL422lYC8HazGUZf67pV1yWuxQFaZC4SGwl3nWzojG0P5pSP5PzZrROPMJLlxY7Zq5VT+B%20ueUW+Pxz5bGYGFi/Hpo319amktNw/Gc4OgMy1wD2yp8rpA7EdhBbxVHNITJF/GAjGgoh8TQOGxSf%20FEu5wsNCcPL3i+Vc3q6qiWRQjHAINxoPiQOrv9jk54toclmNmAEDYMkSTU3yNtVLYPbuFV552ezl%206afhf//Tzp7yM7B5Chz5ChyVFBWDGer0gfojhS+jVlvP2lgVrCWQvhBOzoXT88Wsp7KE1YNOL0GT%20a6nWsTXTp8P118vHv/9ePRI4wKheAjNypKiFqkRIiEinT0rSxpastbD6WnHHdxeDGZIuET+2esMh%20KNrz9nmDvF1wdCYc+wHy91buHA2ugJ5fQLAf7e55krIyaNVKXkWxcWNxowwN1dQsb1F9BGbBAvUs%20aK0cu6UZsPUxsSuEmx9tcCw0niicoNEtvWKeZpyaB3vfhLRFuP05hCZB51f/ns1UQ378UeQsyXjx%20RXjsMe3s8SLVR2C6dxeN55VIShKtYKOivGvDkW9g8wNQ5qR3zoXEtIeW/weNJ4A5wju2+Yr8fXDg%20Azg0DaxuNiVLugS6fQCR1bBI0+DBsHix8lhsrNisiInR1iYvUD0E5rffRFMsGV98ATfc4L3XLzkN%20a26ENJVgKiXqXQZtHxeh9tUdSwEc+hz2vg7FJ1x/nikUOr0KLSdTrSKDt20TDl+Zv/Cpp+DZZ7W1%20yQsEvsA4HOKL2rJFebxrV7FzpFacuSqkL4MVV7gXzh/eUNyZ64/0jk3+jN0CO5+HXS+6l5RZtz/0%20nQWhKlXjAo3bbhNdQpWIihJ+mgCvGxP4AvP66/Dgg8pjYWEimcwbLUfKsoWPYe+briUfmsKhweUi%209iNpaPXfknVG8Uk4/iMc/hpyN7v2nMgU6PKmiAiuDuTmikRHmcP36qthxgxNTfI0gS0wmZnC614i%20icXwVo5HxjJYOQFK01042AApt0CnF0Xgm05F0hbAxvsgf49rxzccCz2/hCAv+9S0YO5csfspI8Dr%20FAV2wMGHH8rFJT5epAx4mn3vwKIhrolLZFMYtgp6fKKLixqJQ2H4Vuj4EhhdiLA+/jP81bPyW+H+%20xIgR0KOHfHzqVO1s8QKBO4MpLRWzlwzJjs3LL4sau57CXg4b74WDLhZtrjsAek8XBZp0XOf0Alg5%20HiwqfcLPEhIPvWeIJWcgM3++aNCmhMEgavi2aqWtTR4icGcw06fLxSU6Gu64w3OvZS2EJZe5Ji6m%20MOj8GgxeqItLZUgaCsO3QOIQ58eWZcPSEXAgwCv1X3IJdO6sPOZwwBtvaGuPBwlcgVHLlr75Zs/W%20edk0BdIlMQvnEtsJLlkHrR8Eg0rfYh11IpJh0Hzo+jYYnUS0Oiyw4Q5RoCuQeeAB+dg334g8pgAk%20MJdIe/ZAmzbKYyaTCFJq1Mgzr7XjGdjxtPPjmt4EF70L5nDPvK6OIGeTWDIVHlY/LjgWhiyHmHba%202OVpLBaoVw+yspTHf/sNRgXe7llgzmB+/FE+Nny4Z8SlJA1WXOVcXCKawsD50PNzXVy8QVxXuGwL%20tH9GLD9llOfCgj5/L2OrkK3uK4KC4FqV1Ai1a96PCcwZTMeO8vavM2aI+IGqUHAQFg10HnEa2RSG%20LBWBczre58RsWD4WpwLS7Hbo/gEBd//csEGkvCgRHS18jr6qY1RJAuwbQCx/duxQHjMYYODAqp2/%20+DgsHupcXOK6wdBVurhoSYMx0Hem+kwGxCxmk0qhbX+lSxd5tn9+vlgmBRiBJzDffitvyzl0qGjN%20WVnKc2HJpc7rmiReAkOWQFhi5V9Lp3I0ugoG/glBTpz4+96G3a9oY5OnMJngppvk49Ona2eLhwi8%20JVL79rBzp/LYDz/AVVdV7rx2KyweIqJ01WhwBfT9Xg/19zVntsOioU4y1w3Q+xuRnhEoHDkCzZqJ%20bgQXEhIiGggGUJZ1YM1gdu+Wi0t8PIweXflzH/jAubg0ukpM0XVx8T0xHUSskWryowPW3gR5LqYg%20+ANNmojSmUqUlcHs2ZqaU1UCS2BmzpSPjR1b+eZVpemiwr8ajcaJqFFjUOVeQ8fzxLSHQQtFRK8M%20exlsfVg7mzzBxInysVmztLPDAwTOEqmsDFJS4OTJimMGA2zeDJ06uX/e/P2wfIx6Xkuj8dD723+r%208ev4FwWHYMkl6uVJW94PXV4LjADIggIxk1Hqo2QyiZKazZppb1clCJwZzMKFyuICooFaZcSlPEfs%20GKmJS2xnkbmri4v/EpUiasUYVL6jfW/Ctie0s6kqREXJC6TZbCKyN0AIHIH580/52PjxlTvnutug%20+Jh8PLwRDPgdzE62RXV8T1wXEUmtxp7X/q4RHACobVao/Rb8jMBZIqWkiBgYJQ4dgqZu1m098LHI%20YZFhChVxLnFd3Duvjm9Zfycc/Eg+HpoEI7b7f/kMux0SE0XNowsxGiE9HWr7+XsgUGYwBw7IxaVl%20S/fFpeCg6FekRs8vdHEJRC56R5TXlFF6Gtbfrp09lcVoFFnWStjt8Ndf2tpTSQJDYNSmhLIvQYbD%20DutuVi9z2eJeaFzFdAMd32AMgj7fQ6hKEOTxn+FoAOzGqF3b890sMO8jAkNgVqyQjw0f7t659r0D%20Gcvl43FdxW6DTuASlih2/Qwql/fGu1wseepDLrlEXqx+uco17Ef4v8CUl4sdJCXi493LPcrbLZqi%20yajVHi7+TQ+kqw4kDhLLXNnOUlm2qKtsL9fWLneoU0cedJeaKsqW+Dn+LzDr1onq60oMHepecN2u%20F8FeqjxmChc7RuH13LdRxz9pcj20V+lFnrFMtLn1Z0aMkI/Nm6edHZXE/4M7Vq2Sj/Xp4/p5Sk6r%20Vz1rci1EeKhIVRUotcLGdDsb0+2k5js4mg/pxQ5ySiG7xEGpDax/p6mEmCDUBHFhBuJDoUktAy1j%20DTSPMdCutoEWsUbM/n8L8S5tHhVdJYuOKI8f/BSSr9HWJndQu8ZXr1avhOcH+L/ArF0rH+vd2/Xz%207HgabJLZCwZoeZ87VnmMrBJYfMzG6lMO1qXZ2ZHlwOZi4ECZTfzllTs4kgcb089/YogJOtc10DPJ%20yKimRnrXq4FqYzRDy3vku4YZyyF3G8R21NYuV+ncWfT3Uuqeofbb8BP8Pw6maVORYXohkZFi6WR2%20QSPz98PctvJOgsnXiKxbjSixwjd7bEzfbWNThgO7Rt9AwygDlyUbGZNipH8DI6aaojdl2TC7MViL%20lMeTLoWBf2hrkzv07y936mZkCF+Nn+Lfl1henrzrXadOrokLwLYn5eJijoLOr1bKPHfZmWVnylIr%20KZ+Xce8SKxvStRMXgOMFDj7ZYWPErxZafVnGs2usHM337/uLRwiJh7ZPysdP/wnpSzUzx226dpWP%20ySo7+gn+LTA7d8qLS7Vv79o5creLFqUy2j4GYd5z7Frt8P0+G4N/LKfbdxY+3G4jt8xrL+cyJwrh%20pQ022nxZzt2LLKQVVXOhafV/osSpjB1e6ADqKdSudV1gqsCaNfIxV/wvDhtsnAxIfjy1e0Mr75RW%20zCmF59dZaTatjBvnW1l9yj9/wHZg2i47rb4s56o5FmbstVFs8bVVXsAU+nfSqqTcRsYKSP1OU5Nc%20plcv+Zif+2H82wczfryoUqfEgQPOU9ZTv4XVkkrtBjOM2AXRLapm4wWUWGHqRitvbrZRIlmVuUtM%20CNQJMxAXClHBBoJNYHdAuQ3yy8UOU2aJgwIPhXTEhMBzvc3c2M6EyeCZc/oNm6fA3jeVx0ITYcwR%20IUb+RmQkFCn4kJo0kafR+AH+LTDdusHGjRUfDw4WXnVZlONZ/ugKuZuVx5KvFa1dPcjCo3buXWLl%20SCX9GgYgJcbAgIYGeiUZaRNnoEktI7VcLCR/osDBtkw7O7MdbM10sPaUnTSVjAhnXJRg4LvhQTSM%20qkYqU3IafksBm6SneY/PIUWlLq6vaNUK9u2r+LjZLNoom/yzzo1/C0zt2spFd+rXhxNOqv5nrYW/%20ZFNLAwzf7rEmXfllMGWZhW/3ut+PJyoYLks2clkTI0MbmYj3cGWIQ2ccLDxq59t9Njakuf9VN4oy%208OMoM+1r+/dq2i023AUHPlQei7sILt2grT2uoLaTlJZWtWL3XsR/42BKSpTFBVzblpNdQAD1hntM%20XPblOhgzu5yjbnb27J5o4IGuJoY1NhHqxW8hJcZASoyJ2zua2JJhZ+Y+O9/utZEluYFfyLECB31n%20Wni6p4n7upgxVofJTKsH4OAnwkd3ITkbIXsjxF+kvV1qqF3zGRl+KzD+e1uSNbYHqKtW6BnRfkQt%20BLzV/ZWz6QIO5zm4YrbFZXExAJcmG5k9Jogl44MZneJdcbmQznWNvNzPzKGbQvjqUjM9k1xTi3Ib%20PL7KxrjfLeTKYhUDiagUqK9SIP7gx9rZ4ipq17xSzRg/wX8FRu1DczaDOfq9fI0d3RoSB1ferr9Z%20fsJO/1nlLvlbDMCYFCOrrg7il9FBDGts9OkHH2yC8S1MLBkXzG9jgmgR65rQzDsi3vPeHP9dVbtM%20i7vkY0dngrUKzitvoCYwajdjH+O/AiNbHoGo9CXFDvvekw93eLqyFgGQVwZTllkZ8avF6TKjVgg8%20cpGJLdcG8/2IIDrX9b+Pe2hjI6uvDuaDwWYuSnAuNAfOOOg3s5xXNlj/yYkKSBKHQN2LlcesBXB4%20mrb2OEPtms/J0c4ON/G/K/4sZ87Ix2Jj5WM52yB/t/JYWJLoEFBJThY66PN9OR9uszn9cbWINbBq%20QjBP9zbTMs6/HRcRQXBjWxMrJgQza2QQdcPVjy+0wNNrbDy12kP78L6i7ePysb1va2eHK6hd87Jq%20A36A/wpMQYF8LCpKPpa9Tj5W243s6ws4VuBg6E8WDuWpLw8MwD2dTaydGExKjH8LixKjmhrZdE0I%20lzdzfmm8s8XG93sVHKWBQsIgMEcrjxUehMJUTc1RRe2aLyzUzg43qX4Ck7NJPlanb6VMyS2Fkb9Y%20OOJEXGJD4MdRQbzaz0yY/+7POaV2GMwYHsSbA8yqgXZ2B9y60MrsQwG6VjIGQR2ViPAcSQyVL1C7%205tV+Kz7GfwVGTZVVBWaLfKy2Ssi1Cs+ssXDgjLq4tI03sGJCMMOb+O9H6i53dDDxcj/1AC6rHSb9%20aWH5iQAVGbVrQhak6Qt0gfEwZSoZgeESJ4GtFPJ2KI8ZQyC2g9tmLD1u57Od6j+efvUNLL4qMJdE%20zpjcyczTvdRFpswGV8+1cNCJCPslcSqZyrkqNyutCVOJwFT7rfgY/xUYq4oDUVamIWuNvMZqwgC3%20c0yO5DmYOM+iWgCqS10Dv40JJtrFcP5A5JFuZj4crB5kl1sGY3+zkOe/17oyaq1pzkhuVr4gSKUn%20utpvxcf4r8CUq2TuyT7sk7/Ln+NmWcQ9OQ6G/1LOGZUfTJe6BmaOCNI0WM5X3NDWxLwrgkiW+ERB%20bGGP+rWcDD8LIVElLAniuimPFR+HQj9JJFQTGIv/pr/7r8CofWiyQt9SgTFC/ZEuv/SZMrh8djmp%20KhG6/eobWHhVMA2qUyKgE/o3MLJ0XDDNVJaCG9IdTJhbji2QXDINLpePqd20tEStuL3azdjH+K/A%20uLtEKsuGgv3Kx9dqC8EqcQQXMGWphWMqfrMWsQZmjQwO6J2iypIQYeCX0UHEqaw21552MOdwAG1f%2011XZXczyk3oratUb9SVSJTCozAyUEsDPbJMfr3YBXcAfR+zM2Ce//caGwE+jgoipxj4XZzSLMTBj%20eJDqFvZ7WwNIYOK7y3thndmqrS0y1IoeqP1WfIz/Coy7ip2rciGo7RScQ2E53LNYvjQzAJ8PC1Jd%20ItQULm5g5OqW8stn1SkH81MDZJ1kChWzXCXy98vz2rSkMpsefkA1EhiVGUxsJ5de8pUNVk5KCs8D%20TO5k4rJqFOdSVR7pZsasorUPLrdSHigTGVnbEocNzuzU1hYl1HySusBUAne95nmSNpoGs/zudA6Z%20xfCuyrS+dZyB5/r47xfpC5rHGnjwInmMzMEzootBQBCj0hcpT5LbpiVqMxi134qPCUyBqeA1t0P+%20XuVjY9q5FP/y8Q4rZZLfQq1g+GFkECH+WZXQpzzRw8zlKfLL6Nk1Vg7kBkAAXpxKgSlZ8qyWVCZs%20ww/wX4FRi1y8MI2g6LhIsVeiVhunL2W1w6fb5Xfa2zqYqmWUricwG4Vfql6k8niBBe5f5r9xGv8Q%20o3Kd5O3Szg4Zaqkzar8VH+O/AuNO7oVa1mtEE6cv9ctBGxkSP54BmNRGn7qoER4Ez/eWLx8XHRNF%20yP2a4DgIilEeKzyqrS1KqOUbRatEP/qY6iEwZSoVvSIaO32ptzfLZy9jUoz67MUFJrQ00S5e/jm9%20vdl/YzX+QXatlKZra4cS+SpRn2q/FR9TPQSmNEt+bIh6ec0NaXY2ZSjfXQ3AUz11x64rGA3wVE/5%20TO+nA3Yy/T2FIFRyrZTnIFrU+ZDKVhfwMf7763FrBqNSvzekturLfLZTPnsZ3sRIG5W7cmXJLs9m%20U8EmthZsJb0snWJ7McU28esLN4UTY46hZURLWoa3pFVEK2KDXI9C9iUjU0y0jLWxT8Gpa7HD9D1W%20pnT130tOeq04bFCWK3pc+4rK1kfyMf77bautKy+s11uuUpNURWCKLeLOKuOezp7xvVjsFhbmLOSP%20rD9YnLOY1NJUt57fIrwF/WP7M7LOSAbGDcS3JcPlGIG7O5m4d4nycuibPXamuBbz6BvUbkZl2b4V%20GLUa1X7sg/Ffgamn0pD+5Mnz/9+qMn0MriUd+nq3jSLJBsfABgb6N6j8D7nEVsJPGT8xM20ma/PW%20UmKvfDTo/uL97C/ez6cnP6V+SH1G1xnNsPhh9I/tT7AsxN1HXNfaxJubrBxRcBnsyXGw+LidQQ39%20UyAJkl8rWFUiMLXgwmv+XNR+Kz7GT79pxIcmy7G48MO2qTTrMcpjYKbtki+PHlAJIFPDYrfw9rG3%20ab26NXfsuYMluUuqJC4XcrLsJB+e+JArtl1BuzXt+OTEJ9iUGoj5iFCz+sxvmsqS1OeoxUupXWNa%20oNbJVBeYShAUJP/gLuyZZFMp2mJSvsOfKoQdWcrO3Tph0L+B+wKzPm89Pdb34ImDT5BlUXE8e4hT%20ZaeYsn8KgzYNYkeB/xRHGtvMLL2wFh6z+28pB6NKBqvdx5W01PqEOWtE6EP8V2AAkpOVH8/OviCy%20UeWKNSgLxaJj8jvpiKZGzG58MjaHjecOP8eQTUPYXywpGeFFNuVvot8JyMvzAAAgAElEQVTGfszN%20nKv5ayuREAHNJX7pvDKcdmbwGQaVL93Xs8R0yVZ5aKh6SxMf498C07Sp8uM2G+w9JzVAzQ8hmd0s%20PykXpUuTXf9YimxFjN46mldSX8Huw61Mq8PKjbtu5K/sv3xmw7l0rCP/DPdk++kURlZuFdRnN97G%20ZpMvkZo08etyDf7r5AVop9Kgfvt26PB3EW/Vqa3yRbP2lPJFbjLAwIauL4/u33c/y3KXuXy8ESMd%20ojowJG4I3aK70TKiJTHmGMJN4dgddvJt+RwvPc6Owh3sKdzDijMr2FO0BwfO7/rF9mLGbx/P2y3f%20ZlK9SS7b5A3a1zYwSzKZ2++vxcFVl9o+FJiDB+W5SGq/ET/AvwWmg0oXgO3b//23m2vnnFI4mKd8%20eLt4A9Eubsw8d/g5vkv7zqVjk0OTua7edUxMnEij0EbS4yLNkdQLqUePWj3+eexQ8SG+TfuWb05/%20w6myU6qvY3VYmbx3MnnWPO5tdK9rb8QLtFTpd33IXwVGdQbjw926c6/1C1H7jfgB/r1E6tEDjBIT%2016z5998qW9GUVYwfWH9avp4e0tj5R5JvzeeWXbfwSuorqsdFmiK5o8EdLO66mO29t/NI8iOq4iIj%20JTyF/zb9L7t77+aLtl/QMVKltADgwMHjBx/nvr33/RPApzUdVJZIznpM+YwyFcd8sCRPSQvWqpTt%207NlTOzsqgX8LTGwstGqlPLZuHRT//eMJS5Kfo+R0hYc2SlIDAHomqa9nrQ4r47eP5/v071WPqxdS%20j7+6/sXUFlPpXqu7R4LjzAYz4xLGsar7Kqa3nU6sWd259/mpz7lx140uLa88TcNoA5GSKgJH/FVg%20FK6VfwhTaT7vbZYsUX7cYBA3YT/GvwUGoJOkGp3FAhs2iH+rRmBWvCsdVdnFaBOv7n956chLrDyz%20UvWYvjF9Wd1tNR0ivTd9vSLhCtZ2X0unSPVqfXOz5vLh8Q+9ZocMI9AqTlmsM0tF21m/QzaDMUf7%20zsmbny9fIqWk+HWaAASCwPRRaVi/apX4r1oId0lFn0VqvvLVbTJAQ5Xva1XuKl5LfU1+AHB53cv5%20tdOv1A5Wz4HyBPVD6/NHlz8YHDdY9bgnDz7JsZJjXrfnQpKjlQXGaoc0HwfGKlIq8W+F+jBFYN06%20sYukhNpvw0/wf4HprdKc/KzAhKv4NRQaZ6VJ3BJJERAk+UQsdgv/t///VLeix9Ydy1dtvyJUJXrY%2000SZo5jVYRaDYgdJjyl3lDPt1DTNbDpLI4nAAKQV+9lWtb0ciiVbwWrXl7c5e40roQuMB2jfXj4N%20XLsW7HaIVCkqVXSkwkM5pZII3nD5D+KDEx+wp0hS9xexLPq0zaeYJIF93iTEGMKMDjNoHCqvffP1%206a8p0zgata5KobVsPyjUfx5FqeCQiJ7a9eVt1ARG7ebrJ/i/wJhMck95Tg5s3gzmCAiVhEtfMIOx%20O+CMJK0kPlRZYIptxapLo6TgJKa3m06ID4OxIkwRPN7kcel4RnkGX5z8QkOLID5MLti5EpH3GWot%20YiMlAZ/epqRELjBxcdC6tbb2VAL/FxiAkSptX7/7Ow6lliTgqOAQlP5b8a7MKk8siJLsevyQ/gNn%20rGcUxyJMEfza6VfqBKsXttKCqxOv5oq6V0jHX059mdNlKjslHkb2eQIU+1uBu0yVrWDZteVtfvlF%20iIwSI0bIQzj8CP+3EODqq+Uf5nffiWVS7V6SJzsg69+YGVnnAIAQSdjh92nyLemb6t1E20jnbVG0%20wGQw8UnrT2gQ2kBxPMuSxVvH3tLMnhCV1o9l/iYwWSpLkdo+ijX5TiWIc+JE7eyoAoEhMHXrQpcu%20ymPp6bB1K8SqbAmf0/XRpPKOlbJ8i2xFrM9fL33OVQlXyU/oA8JMYTya/Kh0fFb6LCx2bar821RW%20QX5385U17gutqx5n5S1KS+XxL2FhMGCApuZUFn/7muVceql8bM4ciFGJB8n89+4UrPKOyxUEZk7m%20HKlztFV4K7pES4TPh/wn8T/UC1EudZFZnsmSHMmF62HKVBTGr3pM5e+Xl11Va8jmTRYv/jeQ9EIu%20vtivW5WcS+AIzGWXyce+/x6iUuRtJ7LWgl3MyYPNokC1EoUKN/YF2QukL3tD/Rsw4H+ZrMHGYK5N%20ulY6viBH/p48iaxaIECYP2XBZa6Qj6k1ZPMmM2fKx4YP186OKhI4AtO9O9SROFL37oUdu6COJC7A%20WgC5WwDRKSBWstmTXVLxjrvijPLFZ8LEuIRxzqz2GVcnXC0dW35muSY2ZKnsFMVJdux8QobK51G3%20n3Z2nKW0FGbPlo/rAuMFzGa48kr5+MyZUKevfDx98T//lG2fZhSf/4M4XHxYmr3cJboLCcEJ8tfz%20MS0iWtA0THl7dXfhbnIsKoXSPUSGSp5lvHaxiM5JXyoZMEIdH8SazJ8PeZJ0/65doVkzbe2pAoEj%20MAB33SX3Dk6bBjED5c898s0//0yWFGE/XQT557hbNhVskp5uVJ1Rapb6BaPrjFZ83IGDzQWbvf76%20+3Ll0brJtfzk0juzC4olaRS12qgXAvcW774rH7v7bu3s8AB+8i27SPv2wsGlRFoa/LhWHtadt/Of%20YKqWscpv2wHsOqfamlqd2+7R3V0y2Zf0iJZn2m4vUKkx4iF2Smoe1wqGGB/WbzqPDJViYbIltzdZ%20tw4WLVIei42Fa67R1p4qElgCAzBhgnzs888hTmVXJ1tkXzdTaQW7M/vfH8Wpcnlxp2bh/j9NTQlP%20kY6llaV59bWLLXBc0issMcKP/C9/XxOKxHbWzo6zfPqpfOzyyyHYv9rUOCMwBUb2Ie/YAdkqTagy%20RZmFtrXlF/j2zH9nMIUq/Zbig32YYesiahndBTaVToEe4Gi+fHmklrGuOZkqpTfUblbeoKRE7IjK%20uOEGzUzxFIEnMLGx6lW8tiiH9AP/xMO0izdKN5fXnP53BlNoUxaYEEMIQQaVOHg/IdIUKR2TvTdP%20sV+hfexZGkb5yQym4CAUHlQeM0dATHtt7Vm5EookdSzq1ZO7B/yYwBMYgEHy0gRsygeDJMjizHYo%20TadWCLSUFIPbk+Mg5+9kSFklOIMfV3E/F7UYHYfDu8mGSv2pz9JcZYmqKanfysfqj1ZvxOYN5s+X%20j6ld835MYArMkCHysaXrIUIyw3HY4ODnAPSqp/zW7Q5Y+HfPJNkMoNReisWhTbh9VVBbBkWZvbtO%202ZYpF5gWkkp3mmK3wqHP5OPJPsj1+e03+ZjaNe/HBKbA9Owpb9dQXAw/qARg7HsLynIY1VQeq/7d%20XuE/UKt5e0pW/cyPULPRWT3fqmC1w2pJWxgj0KWuH+QJHPpUXmAqqiUkqUSOe4Pvv4cDB5THoqPV%20Kwr4MYEpMCYTvPqqfHzGNiiSFAkqy4S9bzAs2UicZAY8P9XOkTwHLcJbSF9ie6H3t3mryrZCSQIf%200Dy8udded9Exm7RqYNdEA0kRXntp17CVwo5n5eNtHwOjhrkM5eXw0EPy8QcegHj/31RQIjAFBuCS%20S+QFd2w2+E2letuBDzBZC7hUpUXJzH02mkfIf4TbCuQ/Xn9BzUZvCsys/fIdpOFudM30Goe/glLJ%20Nn1wHDQer609X38t79wYHg533KGtPR7ED77tSmI0CmWX8WcGZEumKOW5cPBTrmwhf/tf7LLRPFzS%20MgXc6uboK9RsbBUhf29VIbcUfj4gF5hxLXy8PHLYYM9U+XjTG8CkYaZyWRk895x8/Lrr/Lq5vTMC%20V2AArr0WEiT5QFYr/Kzy3H1vMrh+uTSi9FgBpGY2leYbbczfSLalYlM3fyG1JJV9xfsUx1qFt/Ja%2014Nv91gplRT16ljHQIqvd5COzpRvTRvM0Pwube359FM4JklVMBphyhRt7fEwgS0wISFw//3y8RXl%20kC65YxafIOTQ+0xsJb+jvrXZxsWxyrEHFoeFH9N/dMdaTZmRNkM6NiBugFde02qHd7fKSwbe0MbH%20l5vdAtv/Jx9vNF6U/dCKkhJ4+WX5+Nix0ELuBwwEAltgQCR/yWYxNjv8pHLH3PUyNzaXb+UuO+Eg%20xiKPP/jq1FeuWqkpVoeVb9PkMR6D4rwTU/HDfhvHJB9nmBkmtPRxEZhDn8tnLxigzSOamsMHH8DJ%20k8pjRiP8T0UMA4TAF5jISPjoI9FGU4lVVpCV+yjPpv3hOxiv4u9csnM00SblLd3thdtZlC1JTPMh%20bxx9g9SSVMWxluEtGRY/zOOveboIHlspL7Q7pYuJWF+WaMjbA1vlXRdocbd62VVPs2EDPPWUfPyx%20x+ShGAFE4AsMiCSwq1Rq404DJBUROTaLFxM+Q1afel9OKI6CodJTv3HsDZfN1IJtBdt44fAL0vF7%20G92LWRbpXAXuWWwhXbI1nRAOD3Xz4ezFYYNVE8CSqzwe3hA6q3fs9ChlZfCf/8g7BjRrBk8/rZ09%20XqR6CAyIL8QsuYgtgEoOWf3DT3Fxgjw3pzRXXg94We4yVp1RqUivITaHjXv23oMNZT9IUnASVyfK%20K91VlkXH7Mw9It85mtLV5NsavKf+hDPy0hu0/5+2aQHvvgsHZUs14Jln5NdygFF9BKZNG/V4gbXA%20cclYeS7jg+UtIkrzhmC0y0Prb9p1k1/sKP2Q/oNqIan7Gt/n8eZwxRa4Z7F8aZQUAbe29/GP5cCH%208rGwetDkeu1syc6G55+Xj/fqJdr0VBOqj8AAPPus8MnIUMklu9z6PlFBkvwZewS2TPn25cmyk9y8%2062bK7eUuGup5im3FvHxEviMRHxTPTfVu8vjrPrvWypF8ed7R493Nvi3wnbEcTs2Tj6fcBEYNM+M/%20/VReDtNggLff9sOeLpWn+rwTEKUcxqtEYa4CJMvwmPJ9PBz3tfSp9qz7cJTJexQvzFnI3XvvlmZg%20exObw8bNu27mYIl82n1d0nWEm8I9+rrbMh28s0W+Ld2pjoEb2/lwbWQrgXW3gOw7MRihqedFV0p5%20OXyoMpvq3x+6ddPOHg2oXgID6kV5ygG5hjDZ/hDNQiQh5I4Q7KemgkO+7T0jbQa37L4Fq0O7toVl%209jKu33k9c7LmSI8xGUxemb28ssEqlVMD8Hp/s9R5rgmbp0CBJIEQoNnt2ja2f+MNeVAdBGRBKWdU%20P4Hp1w/uuUc+vh74EcWbWqgjn5kRY4gzSopWFQ3AfvJdcMjn/DPTZnLxhov5PfN3t8x2Fxs2ZqXN%20os/6PszOlLe4CDOG8XW7r2ka7rkG7nbgpfVWfjkod+xe09pIb0lJDE3Y9iQc+Eg+njAYOqukDHia%20WbPU41oGDqxWvpezGBzerjzkC+x2Md1cqVIO8WZAEm+2zDqI4WfmYpcUbDLEfomxvkoe1N/cUf8O%20XmnxCiaDZ5cJOwt3MmXfFFbnrVY9zoiRL9t+ydiEsR59/YeXW3h3q1xcooJh+/XBJIb7aPqy53XY%208qB8PLwhDN8OwZJGfZ5m9WpxPVolM9uEBNizRyzxqxnVbwYDwkn2yScilUDGdOC08lB/82LuC3tb%20+lRH7g3YM1Qu4L/56ORHDNo0iDmZc7Aj/0G6itVh5fWjr9NvQz+n4gLwUvOXPC4ub222qooLwNSL%20zb4Tl9MLYataRK4Benymnbjk54uERZm4ALzzTrUUF6iuM5izPPOMesBSE+AZQGGCYXWYuTT/L1ZZ%20ZI23HBiSHsYYP80lU9pHtufGejdyVcJVxAXFufScs6SXpzMzbSZfnvqS/cX7XXrOw40f5r8p/3Xr%20dZzxwVYrDyyXO3UBrm9j5OMhPqpXXHAQ5ncX2fIyWj8EnVVqCXma66+H6dPl4yNHit7q1ZTqLTAW%20iyiUvHat/JghwI3KQxn2uvQ8s47T9iTJkx0YGk3CGD3XZZOCDEF0r9WdUbVH0a1WN5qFN6OWudY/%200bVWh5VTZafYUbCDzQWbWZqzlI0FG7E51H/YZzFg4IVmL3Bvo3tdtskVpm608tRqdRs61TGwZFww%20ob7Ylrbkw/wekL9Xfkx8Dxi6HIwatf746CO48075eN26sHUrJMmur8CnegsMiDKEXbtCgUqbjluB%20AcpDmyxdGJy3mDIkkZ6mXIyNJ2AIl3eBdIVgg7joyx2Vj6UJMYbwUeuPPNoz2+6AR1daeVdlOxqg%20fiQsHRdMA191DNj8IOx9XT4eVAsu26LdrtH69eLmVqZS+GzOnIAthekq1dMHcy7Nm8Nbb6kf8yWQ%20rjzUNWgzd4e9L3+uLRb7kbnYM+8FlSr+zih3lFdJXEwGE9PaTPOouAC8ttG5uEQEwQ8jg3wnLmmL%20YZ/cZwYG6DNTO3HJz4dx49TF5a67qr24AJiefrqaZFWp0fnvDn3LJBXe7MAxoCeK/pi+QavIdNRh%20i7UzyiJigqIBkD8cIybMoYewG1QuLg8SZ47jtga38V6r9+gT67lWpzuz7ExZZuXDbeoO3XbxBmaP%20CaJDHR/cqxw22P0qrL8F1Lo8tH8amt2smVnceiusWCEfHztWRPSa/KD4uZep/kukcxkzRr01RHvg%20IRRFBuDdksk8XPQazmYqwcE5NGz8CVnhH3qtwVlCcAJ3NLiD2xvcTrRZpZulm5RZ4fn1Vt7YZMPu%205MpoE29g2fhgIn3h07VbYe0kSJXnkAFQbwT0nw0eDhWQ8sgj6gXp27eHLVtqhLhATROYHTvEbMam%20MuUfANyCVEO+KL2RyYXvY3dhddk7+RApKe/xe9av5NvyK2NxBVqFt+L2hrdzTeI1Hg/9X3HSzp0L%20rRzKc35JhJth+YQg2sb7YOZiLYQV4+H0H+rH1ekDgxZoV2P344+dF+iePRtGj9bGHj+gZgkMwEsv%20weMqhYcAJgIqy+O5ZSO4rmA6JTj/gTepBS/0K6M0fC4rz6xkWc4yUktT3TK5RXgLesf0ZmDsQEbV%20GUWwh3dBskpg8mILsw+5FqtTNxxmjw6iU10fiEtZDiwbAVkqO4MAtdrC0BUQrFF8yYIFMHy4erzL%20FVfAz2qFoqsfNU9gHA7xRc+Wh9cDYhYzUD68xdKJKwt+5rS9nksve1GCgWd7mxnY0Mih4kNsyt/E%20loItpJWnUWAtoMBWgAEDUaYo4oPiaRnZkpbhLWkb0ZbGYY1df39uYHPAzwdsPLTcKi0WdSFt//a5%201I/0gUO3+CQsHgb5u9WPi2wGgxdDRENt7FqzBoYOlfeVBmjZEjZuVM/2r4bUPIEBcSEMHCjKFsow%20AHcAfeWHZNnjGZa3kD02SX8mBdrGG3jwIhNXNTdh9tEeXrEFvttr47WNVmkNXSUmtjLy/qAg35Rf%20sBbD4iGQtUb9uMimMGSpSAfQgo0bYfBgsXMkIyFBpAs09Vw+WKBQMwUGID0devSAo0flxxiBewGV%20DPpjtkZcXjCbPVbXRQagfW0hNMOTTURqEPdlB1aesDNjr42fDtopcGNHPNwMr11s5iZflV4oOgYr%20x0P2OvXjwhvA4KXadQbYsUPcqLJVio1FRMCSJdWuDIOr1FyBATh+HCZOhFUqJS9NiOWScvcSAMod%20Qcwov5YPSu9lu8U9oQk2CrHpUMdA+9pGWsaK/9apgv/WYoNjBQ4OnHGwN8fOjiwHK0/a3ZqtnOXq%20lkZe6BNEPV/M7MuyYffLsP8DsDlZwyUMgr6zIESjFqsLF4raQ7kqaQnJyTBzJnTvro1NfkjNFhgQ%20hZdHjYJFKt0BjIjlkgthJjOst/BkySucKqtaA+akCLEN3CTaQHItA7XDDMSFQlSQgWCTcCWV2SC/%203EFOKWQWO9iT62B7poP9uQ5sVfxWW8cZeL2/8Bn5hNTvYMOdIgXAGbV7w6C/wKxR0+sNG8SySC06%20PCUFli6FBg20sclP0QUGhE/mootgr0oeiwGRszTY+elKTHV4K+gDXj09Strl0F+pGw7P9DJzXRuT%20b4pFWQth7c1wbJZrxzf+D/ScBibP1hqWsny5iMBVE5f4eCFCTTQsZuWn6AJzlqVLYdAgMTWQYQDG%20mWC0zaWsgJ1xd3Nb7lS2ZPq4XaoLxIXCwxeZub2DyTfJigBFR2HFlZDjSl6XETq9BG0e9rpZ/zBn%20jlhSq+0WAXz2GdysYeSwH6MLzLm89556NbyzDA6FSaXSiN/zqN2L1fXf48UD7Vh0zP8+apMB/q+L%20iSd7mH0nLHarqPy//UnXlkTmKOj5BTS60vu2neX99+Hee0UxMzWuvx6+/FLeCLCGoQvMhXz4IUye%207PxC6hgO91oh1JXtGAMk/4cDjZ7jy9SGfLfXRpqLcSfeIiXGwPWtTVzXxkhShA9/DMd+hG1PQIFr%20dW6I7Qz9ftIucdFmEw3o33nH+bG33CJKNNSQNABX0AVGiWnT4Lbb1FMKAJrHwoNlEOmiWhhDoNX/%204WjzCPNP1eKDbTZWnLBr5qdpX9vAyKZGrmpupI0vQvzPJWstbHkIMlXKml5IwiAYMFe7JmnFxXDN%20NfDrr86PvecekbVfjVqOeAJdYGSsWyeyYneodAQEaBgNdyVC4yPqGb3nYgyBJtdCi8mUR3diT46d%20vTkO9uU6OHjGwYFcB4fyHG7Fqpwl2ASJ4dAo2kCjKAPNYwy0jDVwUaKJhvLecdpgLRRdFve/K/oV%20uUp4I2j9IDS7VTtx2b1b+FHUipUBJCaKXkZq7XJqMLrAqFFSAtde61r+yKShML4Azji5IC+kVlto%20fhc0nVRhm7XQAqn5djKKILtUbEeXWh1Y/l69hZoNhJqEgzYu1ECTWgYaRRuqUJXGS5zZCQc+gCNf%20g9WJg/RcjCHCidv2Ce12iUAsc+67T/QxUqNTJ/j9d6hfXxu7AhBdYJzhcIj6Ha5Mkzt3gmcGgeVb%20KJVUsJIRUhsaT4TGV0MdWR3gAMJWIraaU2fA6QXgbtHzhIHQ9R2IaecV8xTJyhKzVle+665dRX2h%20CI1ibwIUXWBc4cwZkcy2caPzY8PD4dmHoM8xOPwl0q6CaiQOhRaTIWmYtk3ZPUHRUTj+s4i+LVRp%208C4jqJboV9TsJjQtuLhgAUyaBKclrSbOpV490RJHj3Nxii4wrlJUJBx+zrKwzzJ6NLw8DnZOBouk%20F7EzTOGQOETMapKGilmO3+GA3G1w8nc4OgPynGQ6qxHXDfp8C1HNPWeeM6xWeOwxeP119Rios7Rv%20D/Pm1fgIXVfRBcYdHA547TVRT8bZDhOI6OAZH8OZr+DQJ2ArrfxrG4wQdxE0Ggf1LoPo1uIxX2Ap%20gOz1QlSOzYQSF+76akS3hHb/g+QJaDprKSgQ3RTnzXPt+BtugA8+gDCNClhVA3SBqQyLFomIzsxM%2058dGR8MLL8CNV8C+N0Q7U2eJe64QVAviu0NsB6jVTvzFtPe8M7QsB3I2Qt5O4azN2ST+7ah6Izlq%20tRMO3MbjtCtpeZZ580ThbbVs+rMEB4s4mNtv975d1QxdYCpLRga88oq4o5W6MDNp00YEYo0bCfat%20kPotnJwLDpUKaO5iMEFoXQipC6G1wRwN5kgIihT/NQaD0fzvj9luEVG09jIRQWstBEuhaFxWlgGl%20mWCR9OmuLKF1odEEaHIdxF9EVToxuE1RkdgR/PxzeQH4czEaxQznySehtXtZ8joCXWCqytKlIhu7%200MXi3iEhcP/9ohG6LRMOfwFHv4P8fV4106cYgsSyLvkaaHgFGDWuEm6ziSr+Tz6pXrvlXIxG+Oor%20EaagU2l0gfEE+/aJHJT1611/Tr9+4qJv2VL8f+ZqOPQpHP+l8k5hf6NWO2h6o5ithNbxjQ0ZGXD3%203fDjj64/JzlZJCwOdiF1XkcVXWA8RXk5vPwyvPiiesOtczGbRWP0Rx+FFi3EY3aLyM/Z/97fha09%204OvQkqAYaDAKWt4PcZ19Z0dWloiwfecd9XKWF3LjjcKRH69R4apqji4wnubAARFPscZJ7dhzMZvF%20DOjJJ8+PrbDkQ8YyOP4rnJ4PJSc9b29VMZiEs7necLEMiu2kvcP2XHJz4c03hbi4IyzJySIHbaBK%20pXcdt9EFxhvY7WKKff/9ImHOVQwGUczo5ZeFU/hCSk7ByXlw4lexTVzmwi6WpzGYxLZy7d7Cn5Iw%20ULu+Q2qcPAnPPgvTp4sUD1cxmeChh+C//9W3n72ALjDeZNkyEZx30s2ZR0SE8BvcdRc0VmlZUp4L%20ebvgzHbI3Socxfl7xe5PZSKIz8UYLJIMo1uKcP24LlCrPUQ1095Jq0Zurqi/8tJLroUNnEtkpLgR%20TJjgFdN0dIHxPmVlIiFu2jSYP9+1AL2zGAzQrh0MGCAcjgMGQK1azp9nL4fyM/9uO1sLReyNvVxs%20S5/16xiCxIzEGAxBUedsaUdBcDSaBr25Snm5yHBesEDEI23YoN7sTInu3eGmm8QWtCufp06l0QVG%20S3bsgOeeEzsalfnYQ0OFU/i220SUcE3i8GHRmvWzzyAnp3Ln6NMHnnoKLrnEs7bpSNEFxhds3y52%20KzZvrvw5UlLEHXjsWFE2oDoWOjp0SNTBnT69ap9VcrIQp2HDPGaajmvoAuMrysrEFurUqSJWoyrE%20x4uC5bfcAkOGBLbYrF0rAtzmzhV9q6pCWJgov/Dss/pSyEfoAuNrysthxgwRe7FrV9XPFxEhfAx9%20+4olQffuEKtRA3h3KS0VJTDWrBHlD1avFvErVSUxURTovusuXVh8jC4w/oLdLkpBvP66eqdJdwkK%20grZtoXdv6NULOnSAVq1EAp+W2O1iybNjhxCSNWtg2zbnLUDcoXlzERowaZKoy6Pjc3SB8UcWLIDn%20nxdNvryB2QyNGomgvqZNRSJf8+ZiqRUXJ/5iY8VxrmC3Q16ecL6e/Tt0CPbsEc7ZI0cgNdW9+BR3%20aN1aBClefXVgLw+rIbrA+DOnTsHixUJo1q2DnTudt1PxJGFhYgYUFCTEJujv+BebTWwNl5eDxSKE%20Q8vLqEkT6NlTLAMHD/43n0vH79AFJpDIyBC7Ie+/D+lu1vwNdMLDhcN28mRo1szX1ui4iC4wgYjF%20IvwYCxeKYLO1a7WdQWhFmzZihjJkiNgli4z0tUU6bqILTHXg1Im1OC0AABADSURBVCkRJXz274yH%20i0RpRWioEJOhQ0XMSqtWvrZIp4roAlPdsNtFfZoVK0QxrK1bYf9+91IUtKJxY+jYES6+WNTH6dhR%20FOTSqTboAlMTsFhgyxax/b1pk9jhSU0Vfhwtvv7YWOGYbdJERB336wfduulbyTUAXWBqMsXFQmj2%207YMTJ/7dYs7OFv/Nzxc7RCUlIijubO3hkBDxFxYmRCIi4t/t7fh48ZeUJHZ3kpMhJsaX71LHh+gC%20o6Oj4zX0qCQdHR2voQuMjo6O19AFRkdHx2voAqOjo+M1dIHR0dHxGrrA6OjoeA1dYHR0dLyGLjA6%20OjpeQxcYHR0dr6ELjI6OjtdwsSZi9SKvoIxtuysWlzaaDPS9qJ5HXmPAhB9ZuyXtvMdMJgNFe+72%20yPlrCs++vY4X399Q4fEVP46jW4cEH1ik4w41UmB27stm2HW/VHg8IjyI7K23+8Ai73HZpF9ZsuaE%200+OCg4xER4aQlBBBq5RY+lxUjzFDm5JUN0IDK3WqKzVSYHQqUm6xk5VbQlZuCTv2ZvHD3AM8+MIK%20Xn6kD5MndfS1eQFJQtdPyCsoP++xZo1rsXPBdT6ySHt0H4yOFKvVzoMvrODhl1ZWy4qcOt5HFxgd%20p7zzxVZ+W3jI12boBCD6EqmGMn5kcy7tnwxAWbmNvYdymPX7AU5nKDdC+/mPg4wZmqKhhTrVAV1g%20KkFJqZUV60+y52AOZeU2miXH0L9HfeJjwzz2GoeP5bF1dyYnThdSVGzBZDJQNz6cXl2TaNm06q1g%20O7ety3/GnN9P6PG7u9H3yh84kFqxaPiu/Tluv8a+w7ls35vFqbQiikosmE1G4mND6dSmDl3b1620%207RdiszlYvOY423ZnYbPZSaobQZ9u9UhpVLm2sfmF5WzemcGegznk5pX9Y3dK41p0bVeXqEiNu2IG%20MLrAuIHVZufNz7bw+qebOZNfdt5YUJCRay5vxYsP9SYuJrTSr7F60ymeeG0Nazaflh7Tq0siU27p%20wqghTSv9OkrUigrh1v+04+EXV1YYyyssV3iGMgtXHuO/b6xl884M6TEN60Ux6crWTJ7UkZjoyhf6%20nvX7Af77xhpST+RXGBvcpyGvP3kxrVJcE+SFK4/x7pfbWLz6OBarcoO7oCAjQ/o05PkHe9O2RXyF%208SenrmbqJ5ulr3HwaB6hLd5THNuz6HqaNIx2ydZAQffBuEhxiYUxt8zhqdfXVBAXAIvFzpc/7KbX%20FTM5dNT9tiHFJRZueWQhgyb+rCouAGs2pzHurnmMu2su+W788F2hYZJy76HIiCCnz83LL2PC3fMY%20edNvquICcPxUAc+/u572w77hj6WpbtvpcDiY8txyrp8yX1FcABatOk7vsTPZvrdizJPM7vnLj0rF%20BcT3/MfSowy8+qdK2V3T0AXGRW5+eCGLVh13etzRkwUMv2E2OXmlLp+7oKicSyf9yje/7HXLpjkL%20j3DZpF8pLPKcyGTlKNvdOiVO9Xk5Z0oZfM3PzF5w2K3Xy8wp4co75jJj9j63nvf8O+v5YPp2p8cV%20l1i5/1l5j+/CIkul7M4vLK+U3TUNfYnkAj//eZBf5ivvokRHBXNR+wSCzEYOH8/jwJEzHD1Z4PK5%20CwrLGXHTbNZvrdgKtl3LeIb0aURi3XBKSqxs2J7OH0tTz9sy3rQjg1E3/8bcL8YQHuZ8lqHG7gM5%20vPf1tgqPm00G7rqug/R5Z/LLuGzSr+zcl11hLCjIyEXtE6ifGEFJqZUtuzI5lX6+I9lud3Drowsx%20m42MG9HcJVv/WnEMgKiIIDq2qUNYiJmtuzPJzCmpcOyqjaeY+ukmHry1a4WxJ6auVrQboE3zONo0%20j3PLbqPRQJBZ3Lelyyyz8n3dIHmvgYwuMC4wbdZuxcfr1g5j5Y/jaVQv6p/Hfph3gBsf+AurzbXA%20kVc+3KgoLndd14E3nrq4wuMPvrCC9746XwTWbE7jzc+38MTk7i69JsDMOfvZvkcsHcrKbew5mMOe%20g8qO3Fce60vfbvIUihfe28C2PRWXIfUTIvjj68tp0eRfH4jVZmfsbb//IxD/Pu7gzicWM2JQsstC%20ObRvI755+xJqRQkfjsVq54Hnl/PJdzsrHPvsW+u44ao21D7HEZ+RVcLnM3cpnvuBW7vw3AO9MBoN%20/9j98IsrK8yazto9rF8jakWH8OyUXjw7pRegB9qBvkRyisMB67elKY69+/SA88QFYNzw5tx9vWuR%20rza7g69/3lPh8ZjoEF58uLfic64f21rxcaXzqLF1dyYzftvHjN/28fOfB6Xicv/NnVXfj9Vm57vZ%20yku7D14YdJ64AJhNRh6f3E3x+MJii6LYKhFbK4Sv3xz2j7iAmBm8+VR/2ik4X8stduYsPHLeY7Pm%207sOqMMvo3jGB5x/s/Y+4nLX7tcf70rZFxaViYbGFX/7S44SU0AXGCQdTz5BfUNHHkVgnXLqLc+vE%20di6de9f+bDKyK07pu3VMIDREeXLZqpnyjsjREwWkZxW79Lqu0Kh+FHOmjealR/qoHrdzbzbZuRX9%20NrXjQrnk4saKz+nWMZHacco7bbsOKC9XLmT8iObE1qp4DpPJwM0T2io+50Ln+dI1JxWPu+XqdhgU%201ismk5Gbxiufe6kL+V41EX2J5ASlmBCAbh0SzrvDnUuz5Bhqx4aSpfDDO5fdkh/T2s2naTfsG/cM%20BU6mFZJQ2zPtWI+dLGDyU0v49dNRtG4md/DKZj7Nk+VbwyajgYvaJ/DnsqMVxk6mFbpkX88uSdKx%20Hp0TFR/ffyT3vP+X2d6zi/LzAXp0Uh6TnaumowuME7JyK84wAOolqGcZ10uIdCowGVnK5y4oslBQ%205P5Wt9JMqyocPVnATQ8tYNVP46VimqHgVAWIi1GPbamXqPz5ufoe6icob6eD/Lu5cKYls1313BK7%20lZzLOvoSySk2yU5AcLBJ9XlBQc4/WrV4i8rgzvleeqQPpfsnU7TnLtb+OoE+kjo4W3Zl8va0LdLz%20KPkwQCwn1Ag2K39+NrtrznG1zzc4SPncF9oqs1313BK7Zeeq6egzGCfE1lK+E6dlqvs7XPGHyPwQ%20yQ2i6NLO/WJKlVkemUxGOrWpw/zpl/PISyt5/+uKsSVPv7WOXl2T6Nm54rIkPlb5PSgFI55LWqZy%20zlOUCwF9oP75ysYu/C7jY0M5cbrikiwto5hG9aMqPA5yu2WfQ01HFxgntG5ecUcCYNWGU9jtDsWl%20w5FjeYoX7oV0bF1H8fEWTWL57p1L3TO0iphNRqY+cTEbtqWzftv5Ozll5TbufGIxm37/T4X320ny%20HmT+JRCzlJUbTymONW7gWqj8srUnuHyYcvLl8nXKzts2F+wudWpdR/F7Wrr2BNdfqbxbt0xy7o5t%20lD+HC6lpVS/0JZITmifHEBVZ8a56KqNIGir+mSS24kLat4ynjsIsZt3WNLeicwuKytm137XdFzUM%20Bnjqvh6KY3sO5vLznwcrPN6uVbzi3Tsrp5S/lld04gJs2JYmjRhuKxH0C5k19wB5BRVnSXa7g2mz%20lD//XhfMwAb0aqB43GczdyrWv7HZ7NJzD+hZ8VxKS7WiIovi86srusA4wWg0SGu/Tv7vUk6ln38H%20nLPwMO98sdWlc5tMRq69ouKdMq+gnFsfXURpmVX1+YeP5fHU62toMeArfvVQHMbQvo3o3lH5/b70%20/gbsF/hIzCZjhazss9z5xGL2Hz5/58Zqs/PiexVr7AJEhgfRvZNrS8Ps3FJuenABhcX//mBtNjuP%20vLxKMejPbDYyakiT8x4bP6I5ZoWo2vVb03ly6urz3qvVZuehF1cqZpVHhgdxxSUVZ1N14itm16dl%20FfPVT3ucfrfVBX2J5AKXDUhm8eqKcQ6nM4roe9UPXHFpM0KDTWzakcHSte7FQ0y5pQtf/LC7gs/i%20l/mH2LYni5vHt6F7p0Rqx4Vhs9k5cjyfNZtPs3j1CbbuzqzS+5Lx+ORuXH7r7xUe33Ugh1//OsTY%20S5ud9/gDt3bhyx/3UHBB4uXJ9CK6j/meUYOb0jIlloKicv5Ymsr+w8o7ZPff0tmtdIe5S1JpN3Q6%20IwY1ITIiiD+WHq0gaGeZOKoFdePP91HVrR3OJRc3Zu7iIxWOf/3TzWzYls7FPeq7ZPe5AX9n6dCq%20NrsPVBSk2x9bxB2PLSIkxITh74CbsZem8PmrQ52+50BDFxgXuHp0S559Z32FHxDAqfQi3v+qYv5O%20SLCJsnKb03PXiQ/js1eGMOHueRV2UA4fy+OJqWsqb3glubR/Ml3b1WWTQkb0i+9v4PJLmnGuKyax%20TgQfPj+Q6+6fX2FpUVpm44d5B5y+Zq8uSTx8e8VcIRlnP9+0zGJpuP9ZIsKDePaBXopjD97WhXlL%20jiguiZavP8ny9co+F1fsHjMshe/n7FcccyA+m7OUW6rnLlSNXCIVFSuvg2Xbm3Xiwpj26hBMJtfS%200e68tj2d27rm9AMYObgJX785jLBQ/9H7xyTh/Dv3ZTNnQcXl2FXDm/PB8wMVlxzO6N01iZ8/HkGQ%205PNXYuoT/YiOcq3w0303dpJ2R+jVJclrdo8e2lQ1h6sm4D9XtIas2KC8g1FfEkQFMGpIU1b+OI5X%20P9rEvCWpFWYnBoPIYZk8qRPjRjRnwIQf3bLpysua06trPb79ZS/fz9nv1GkbEmyiWXIM7VrE0b1T%20IsMHNlE8rlH9KMVIXGdFsUYOasJ1Y1uxcXvFWcwXP+zmsgHJFWKBbhzXlgE9G/DVj3uY+ft+jhxX%20rtMCYlu3f4/6jB/ZglGDmziNm7mQTm3rsOG3q3n1o038+P/t3MsvY1EcB/DvdTtRajINpXQ0Q7yi%20VUQQixGPjUkksxhCJFYeiTV/An+ChQUrG4mwkWDlEZHYSIjxGpF4hBmTabV1cVWkFkSEq9pJDuJ+%20P+ubm7O495tzfuec3/jWo0uFAJCdbkZ7kwsdza6Q77o/7omZHfzcdD95HkeWJbhyLGhpcKC10Rly%203HKUhLGB7xgcXcfk7C7Wtjz4/fc0rJnteyEFg/rqF7/6y42v9cM4Vx8X2doanejtrnr2HX4lgKn5%20/buWmRlfPqGyLBX2excfD48UzQ8p3R5eG8fDIwVLa/+wd+CH9yQABIMwxX5ASpIJedkJyEgzP3nt%20/63Y2PZgZdONgz8Kzs4uIRuikGA2otCZiGJXeMXcY5+qeabGZo1D9G3ABS6vMDG9g+X1m5aZyUkm%20lJd8Rl5OeDtSD/mVABZXblpmen3q3bgz08xsmRkhXQSMx6tCvbjCzMI+unrmcOzTPgQ20leL2mrt%20mQARRU4XSyRbaf+zz1gtsaip0L79S0T/523PsV9QS4MDhgjrAEQUGv8oAAW5FnS2Fb32MIjeHV0H%20TIzRgK72IkwP1bFwRySALmowP75lQpIAY7SMxPgY2G0f4ciKR0m+FXEmBguRKLrYRSKi16HrJRIR%20icWAISJhGDBEJAwDhoiEYcAQkTAMGCIShgFDRMIwYIhIGAYMEQlzDQkWRHFp89vCAAAAAElFTkSu%20QmCC%22%20preserveAspectRatio=%22none%22%20height=%2274.083%22%20width=%2274.083%22/%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M82.141%2025.5H68.763L42.429%2042.963h-14.83%2014.83l26.334-6.326H82.14%22%20stroke-width=%222.56349605%22/%3E%3Cpath%20d=%22M82.141%2050.4H68.763l-26.334-7.438h-14.83%2014.83l26.334%2018.573H82.14%22%20stroke-width=%222.56349605%22/%3E%3Cpath%20d=%22M27.6%2042.962h18.465%22%20stroke-width=%225.46556705%22/%3E%3C/g%3E%3Ctext%20y=%2219.546%22%20x=%2237.957%22%20style=%22line-height:3.91000009px;-inkscape-font-specification:'Latin%20Modern%20Roman,%20';text-align:center%22%20font-weight=%22400%22%20font-size=%223.528%22%20font-family=%22Latin%20Modern%20Roman%22%20letter-spacing=%220%22%20word-spacing=%220%22%20text-anchor=%22middle%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22line-height:10.90999985px;-inkscape-font-specification:'Gill%20Sans'%22%20y=%2219.546%22%20x=%2237.957%22%20font-size=%2216.933%22%20font-family=%22Gill%20Sans%22%3EBus%20Split%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "99995f67-7a3a-4cdd-8539-e17ae835734a",
          "type": "basic.output",
          "data": {
            "name": "out_0",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 904,
            "y": 136
          }
        },
        {
          "id": "d201ea68-05c2-4e4a-b182-98cd11fab2e4",
          "type": "basic.output",
          "data": {
            "name": "out_1",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 904,
            "y": 232
          }
        },
        {
          "id": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895",
          "type": "basic.input",
          "data": {
            "name": "in4bits",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 176,
            "y": 280
          }
        },
        {
          "id": "58a18b31-d1ab-4c1e-be55-d902fdbcab58",
          "type": "basic.output",
          "data": {
            "name": "out_2",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 904,
            "y": 328
          }
        },
        {
          "id": "06d156a8-45c7-4a2d-b725-f8755c86e14d",
          "type": "basic.output",
          "data": {
            "name": "out_3",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 904,
            "y": 424
          }
        },
        {
          "id": "147a73f0-707a-4bca-afed-7733cf4c0adb",
          "type": "basic.code",
          "data": {
            "code": "//-- in4_split.v\r\n//-- Bit split froma a 4 bits bus.\r\n//-- Author: JdeRobot [FPGA-Robotics]\r\n/*\r\nmodule in4_split( \r\n\t\t//-- Inputs ports\r\n        input wire [3:0] in4bits\r\n\t\t\r\n\t\t//-- Output ports\r\n\t\toutput wire in0,\r\n\t\toutput wire in1,\r\n\t\toutput wire in2,\r\n\t\toutput wire in3,\r\n\t\t\r\n\t);\r\n*/\r\n    assign out_0 = in4bits[0];\r\n    assign out_1 = in4bits[1];\r\n    assign out_2 = in4bits[2];\r\n    assign out_3 = in4bits[3];\r\n//endmodule",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in4bits",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "out_0"
                },
                {
                  "name": "out_1"
                },
                {
                  "name": "out_2"
                },
                {
                  "name": "out_3"
                }
              ]
            }
          },
          "position": {
            "x": 360,
            "y": 120
          },
          "size": {
            "width": 480,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cac1a1d5-cfd9-4e82-ac0a-a65c676f1895",
            "port": "out"
          },
          "target": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "in4bits"
          },
          "size": 4
        },
        {
          "source": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "out_3"
          },
          "target": {
            "block": "06d156a8-45c7-4a2d-b725-f8755c86e14d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "out_2"
          },
          "target": {
            "block": "58a18b31-d1ab-4c1e-be55-d902fdbcab58",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "out_1"
          },
          "target": {
            "block": "d201ea68-05c2-4e4a-b182-98cd11fab2e4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "147a73f0-707a-4bca-afed-7733cf4c0adb",
            "port": "out_0"
          },
          "target": {
            "block": "99995f67-7a3a-4cdd-8539-e17ae835734a",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}