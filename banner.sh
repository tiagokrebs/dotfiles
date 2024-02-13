#!/bin/bash

# Lista de frases
frases=(
	"Nada é nosso, exceto o tempo ~ Seneca"
	"Tenha uma visão ~ Arnold"
	"Trabalhe duro e divukgue ~ Arnold"
	"Não tenha um plano B ~ Arnold"
	"Retribua ~ Arnold"
	"Nada se faz sozinho ~ Arnold"
	"Não se contente com Pouco ~ Accorsi"
	"A tua inteligência será a tua tumba ~ Accorsi"
	"Preste atenção no seu corpo ~ Accorsi"
	"Afaste-se do que não sentido para o teu plano ~ Accorsi"
	"Seja menos crítico e idealista ~ Accorsi"
	"Exercite a sua articulação ~ Accorsi"
	"Refine a sua critica ~ Accorsi"
	"Aceite pelo bem do aprendizado ~ Accorsi"
	"A tua performance te corrompe ~ Accorsi"
	"Confie incondicionalmente na tua inteligência"
	"Confie mais no teu Em Si ~ Accorsi"
	"Conecte-se com o teu lado artístico ~ Accorsi"
	"Costas eretas ombros para trás ~ Peterson"
	"Cuide de si mesmo como cuidaria de alguém sob sua responsabilidade ~ Peterson"
	"Seja amigp de pessoas que querem o melhor para você ~ Peterson"
	"Compare a si mesmo com quem você foi ontem, não com quem outra pessoa é hoje ~ Peterson"
	"Não deixe que seus filhos façam algo que faça você deixar de gostar deles ~ Peterson"
	"Deixe a sua casa em perfeita ordem antes de criticar o mundo ~ Peterson"
	"Busque o que é significativo, não o que é conveniente ~ Peterson"
	"Diga a verdade. Ou, pelo menos, não minta ~ Peterson"
	"Presuma que a pessoa com quem está conversando saiba algo que você não sabe ~ Peterson"
	"Seja preciso no que diz ~ Peterson"
	"Não incomode as crianças quem elas estiverem andando de skate ~ Peterson"
	"Acaricie um gato ao encontrar um na rua ~ Peterson"
	"Não degnina as instituições sociais ou as realizações criativas de forma negligente ~ Peterson"
	"Imagine o que você poderia ser e mire nesse alvo com determinação ~ Peterson"
	"Não esconda na névoa o que é indesejável ~ Peterson"
	"Perceba que a oportunidade se esconde onde a responsabilidade foi abdicada ~ Peterson"
	"Não faça o que odeia ~ Peterson"
	"Abandone a ideologia ~ Peterson"
	"Dedique-se ao máximo a pelo menos uma tarefa e veja o que acontece ~ Peterson"
	"Tente deixar um cômodo da sua casa o mais bonito possível ~ Peterson"
	"Escreva em detalhes todas as velhas lmebranças que ainda o perturbam ~ Peterson"
	"Planeje e se esforce para manter o romance no seu relacionamento ~ Peterson"
	"Não permita que você se torne ressentido, dissimulado ou arrogante ~ Peterson"
	"Seja grato apesar do seu sofrimento"
)

# Calcula o índice aleatório
indice=$((RANDOM % ${#frases[@]}))

# Define a frase selecionada
frase_selecionada="${frases[$indice]}"

# Imprime o desenho com a frase selecionada
cat <<EOF
|￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣|
|  $frase_selecionada
|＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿|
               ||
  ⠀⠀⠀⠀⠀⠀(\(\   ||
  ⠀⠀⠀⠀⠀⠀( – –)づ       Krebs
  ⠀⠀⠀⠀⠀⠀((‘) (’)
.
EOF
