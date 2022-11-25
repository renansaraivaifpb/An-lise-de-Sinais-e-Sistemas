// IFPB - Cajazeiras
// Engenharia de Controle e Automação 4º período
// Análise de Sinais e Sistemas
// Renan Saraiva dos Santos

clc
clear

// A função em questão é definita por u(t - a) e dada por:
function [degrau] = u(tempo)
    if tempo >= 0 then
        degrau = 1;
    else
        degrau = 0;
    end
endfunction
// O degrau unitário assumirá valores diferente de zero quando o tempo for
// maior que zero, pois com isso, já é o suficiente para estudo da 
// Transformada de Laplace.


// primeiro índice do vetor tOut()
k = 1

for t = -1:0.01:1
    // para intervalos no tempo incrementado a função assuma seguinte valoar:
    func(k) = exp(-t)*u(t)
    tOut(k) = t 
    k = k + 1
end
// plotagem
plot(tOut, func)
xlabel("t");ylabel("u(t)"); // nomes para eixos
