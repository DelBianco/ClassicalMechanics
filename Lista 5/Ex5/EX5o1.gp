# (#) significa cometario, tudo em uma linha que estiver depois de (#) nao sera executado pelo gnuplot
# a nao ser que o simbolo # esteja dentro de aspas ' ' (ou " ") 
# por exemplo '#808080' -> isso significa uma cor em hexa-decimal


############## Configurando o Arquivo de saida

# este comando seleciona o tipo de saida, nesse caso é uma imagem .png
set terminal pngcairo enhanced

# este comando diz com qual nome a imagem será salva dentro das aspas ""
set output "ImagemDeSaida.png"


############## Configurando o fundo do grafico
##### style line 12 -> referencia para a nova linha sera chamada com ls 12
##### lc rgb = line color rgb -> significa que vou passar uma cor do tipo rgb
##### '#808080' = cinza -> cor em hexadecimal
##### lt = line type, -> tipo de linha , o numero 0 significa tracejado simples outros numeros outros estilos
##### lw = line weight - > 'Peso' da linha 'Grossura' = 1 , quanto maior mais grosso

set style line 12 lc rgb '#808080' lt 0 lw 1

##### depois de criado essa nova linha cinza , tracejada , de peso 1 e referencia numero 12
##### dizemos que as linhas de fundo do grafico terao o estilo 12 
set grid back ls 12

############## Configurando as Curvas
##### sao seis estilos de linha cada um com uma cor diferente porém , todos com o mesmo estilo


set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#09BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray
set style line 6 lc rgb '#E47833' pt 6 ps 2 lt 2 lw 2 # --- orange


############ Numero de amostra para equacoes
set samples 1000

############# Escrevendo as Equacoes

E1(x) = sin(3 * x) * cosh(x)

plot  w l ls 3,T2(x) w l ls 6
