@echo off
color 1
set /a number=%RANDOM% %%100 +1
echo Estou pensando em um numero entre 1 e 100. Adivinhe qual e:
:guess
set /p guess=Seu palpite: 
if %guess%==%number% (
  color 6
  echo Parabens! Voce adivinhou o numero correto.
  goto end
) else if %guess% gtr %number% (
  color 3
  echo Tente um numero menor.
  goto guess
) else (
  color 2 
  echo Tente um numero maior.
  goto guess
)
:end
color 5
echo O jogo acabou.
pause
