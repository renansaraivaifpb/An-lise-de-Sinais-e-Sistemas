# Análise de Sinais e Sistemas

# Função Unitário
// A função em questão é definita por u(t - a) e dada por:

// O degrau unitário assumirá valores diferente de zero quando o tempo for
// maior que zero, pois com isso, já é o suficiente para estudo da 
// Transformada de Laplace.
// O gráfico da função degrau unitário pode ser visualizado dessa forma:
![alt text](funcaounitaria.png)


# Sinal do tipo Rampa

// Definição para Sinal do tipo Rampa:
// "um sinal em rampa, x(t) = t, aumenta indefinidamente quando |t|→∞ e nem a energia nem a potência existirão para este sinal"


// definição de intervalo
t = -6:0.01:6;

// desenvolvimento do sinal rampa
// a estruturação de tal sinal contêm um degrau do tipo:
// para t >= 0 temos r3=(-t+3)
// e que, por definição da função degrau, temos u(t) = 0, para t < 0
r3 = (-t+3).*(t>=2).*(t<=3);
// para valores de t = 0 até 2 temos u(t) = 1
![alt text](rampa.png)
