clc
clear

function [degrau] = u(time)
    if time<0 then
        degrau = 0
    else
        degrau = 1
    end    
endfunction

indice = 1
for tempo = -5:0.01:8
    // p1 (0, 0) p2 (2, 2) | y = mx + b
    // 0 = 0m + b => b = 0
    // 2 = 2m + b => m = 1
    // b = 0 e m = 1 
         
    // p2 (2, 2) p3 (3, 0) | y = mx + b
    // 0 = 3m + b = 0 = 3m + 2 - 2m => m = -2
    // 2 = 2m + b = b = 2 - 2m     
    // 2 = 2(-2) + b = 2 + 4 = 6
    // b = 6 e m = -2
    
    
    // o código abaixo faz exatamente basicamente a mesma coisa nos 
    // comentários acima, porém utilizando o degrau.
    func(indice) = tempo*u(tempo)-(3*tempo-6)*u(tempo-2)+(2*tempo-6)*u(tempo-3)
    tOut(indice) = tempo
    // incrementando indice para populacionar os vetores
    indice = indice+1
end
// plota o gráfico
plot(tOut, func)
// melhorando a visualização
set(gca(), "data_bounds", matrix([-6, 6, -0.1, 4], 2, -1));
