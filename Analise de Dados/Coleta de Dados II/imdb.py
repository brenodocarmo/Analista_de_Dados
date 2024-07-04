from bs4 import BeautifulSoup
import requests

import csv

url = "https://m.imdb.com/chart/top/?sort=user_rating%2Cdesc"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1"
}

pagina = requests.get(url, headers=HEADERS)
site = BeautifulSoup(pagina.content, "html.parser")


filmes = site.find_all(
    "li", attrs={"ipc-metadata-list-summary-item sc-10233bc-0 iherUv cli-parent"}
)
# Realizando o filtro dos 10 primeiros filmes
filmes = filmes[:10]


# Rank de Filmes
rank_filme = [i.find("h3").get_text().split(".")[0] for i in filmes]

# Titulo de Filmes
titulo_filme = [i.find("h3").get_text().split(".")[1].strip() for i in filmes]


titulo_filme_1 = [i.find("h3").get_text() for i in filmes]

# Ano dos Filmes
ano_filme = [
    i.find("div", class_="sc-b189961a-7 feoqjK cli-title-metadata")
    .find("span")
    .get_text()
    for i in filmes
]

# Nota dos Filmes
nota_filme = [
    i.find(
        "div", class_="sc-e2dbc1a3-0 ajrIH sc-b189961a-2 fkPBP cli-ratings-container"
    )
    .find("span")
    .get_text()
    .split("\xa0")[0]
    for i in filmes
]


conteudo_extraido = list(zip(rank_filme, titulo_filme, ano_filme, nota_filme))

# print(conteudo_extraido)

# Inserindo os itens no arquivo CSV
with open("imdb.cvs", mode="w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f, delimiter=";")
    writer.writerow(["ranking", "titulo", "ano", "nota"])
    writer.writerows(list(conteudo_extraido))

