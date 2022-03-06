load canal yrxfiltp yrxfinal EbNop%recuperar la señal del canal
load generador tx nb M

%*************** Demodulador M-QAM *****************
ydemod=qamdemod(yrxfinal,M,'OutputType','bit');

%****************Forma de Pulsos****************
%Se usa el mismo algoritmo del generador
rx=ydemod(1:20,1)';
figure
stairs([rx,rx(end)])
hold on
ylim([-0.5 1.5])
xlim([1 length(rx)])
pbaspect([1.5 0.5 1])
xticks(0 : length(rx))
set(gcf, 'position', [10 10 750 250]);
grid on;
hold off;


%****************BIT ERROR RATE*****************
nErrors = biterr(tx,ydemod);
% BER estimado
berEst = nErrors/nb;
%BER teorico
EbNoVec = (1:15)';
berT = berawgn(EbNoVec,'qam',M);
%Gráfica
figure
semilogy(EbNop,berEst,'*')
hold on
semilogy(EbNoVec,berT)
grid
legend('BER Estimado','BER Teorico')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')