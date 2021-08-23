#include "Menu.agc"
// Project: SweetRace1 
// Created: 2021-06-08

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "SweetRace1" )
SetWindowSize( 1366, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

//SetPhysicsDebugOn()

// set display properties
SetVirtualResolution( 1366, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0, 0, 0, 0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
LoadFont (1, "Mochido.ttf")
SetPrintFont (1) 

	LoadMusic(30, "Musica.wav")
	PlayMusic(30, 30)
	
// Imagens
	//BackGround
	ImagemBackGround  = LoadImage("BackGround.png")
	BackGround        = CreateSprite (ImagemBackGround)
	SetSpritePosition  (BackGround, -60, 0)
	
	// Inicio
	ImagemInicio      = LoadImage("Inicio.png")
	Inicio            = CreateSprite (ImagemInicio)
	SetSpritePosition  (Inicio, -60, 0)
	
	//Socre invisivel
	Moedas   = LoadImage("Moedas.png")
	Moedas   = CreateSprite (Moedas)
	SetSpritePosition  (Moedas, 2000, 550)
	SetSpriteShape (Moedas, 3)
	
	//Socre invisivel
	Moedas2   = LoadImage("Moedas.png")
	Moedas2   = CreateSprite (Moedas2)
	SetSpritePosition  (Moedas2, 2000, 550)
	SetSpriteShape (Moedas2, 3)
	
	// Player
	ImagemPlayer      = LoadImage("Player.png")
	Player            = CreateSprite (ImagemPlayer)
	SetSpritePosition  (Player, -500, -500)
	SetSpriteShape (Player, 3)
	
	// Obstaculo - Carro Roxo
	ImagemObstaculo   = LoadImage("Obstaculo.png")
	Obstaculo         = CreateSprite (ImagemObstaculo)
	SetSpritePosition  (Obstaculo, 2000, 460)
	SetSpriteShape (Obstaculo, 3)
	
	// Obstaculo - Carro Verde
	ImagemObstaculo2   = LoadImage("Obstaculo2.png")
	Obstaculo2         = CreateSprite (ImagemObstaculo2)
	SetSpritePosition  (Obstaculo2, 3000, 590)
	SetSpriteShape (Obstaculo2, 3)
	
	// Obstaculo - Carro Vermelho
	ImagemObstaculo3   = LoadImage("Obstaculo3.png")
	Obstaculo3         = CreateSprite (ImagemObstaculo3)
	SetSpritePosition  (Obstaculo3, 3000, 590)
	SetSpriteShape (Obstaculo3, 3)
	
	// MenuTexto
	MenuTex   = LoadImage("MenuTex.png")
	MenuTex   = CreateSprite (MenuTex)
	SetSpritePosition  (MenuTex, 1170000, 5)
	
	// BaseBranca
	BaseBranca  = LoadImage("BaseBranca.png")
	BaseBranca        = CreateSprite (BaseBranca)
	SetSpritePosition  (BaseBranca, -15000,0)
	
	// MenuTexto
	ComoJogarText   = LoadImage("ComoJogarText.png")
	ComoJogarText   = CreateSprite (ComoJogarText)
	SetSpritePosition  (ComoJogarText, -15000,0)
	
	// MenuTexto
	CreditosText   = LoadImage("CreditosText.png")
	CreditosText   = CreateSprite (CreditosText)
	SetSpritePosition  (CreditosText, -15000,0)
	
	// MenuTexto
	ComoJogar   = LoadImage("ComoJogar.png")
	ComoJogar   = CreateSprite (ComoJogar)
	SetSpritePosition  (ComoJogar, -15000,0)
	
	// MenuTexto
	Creditos   = LoadImage("Creditos.png")
	Creditos   = CreateSprite (Creditos)
	SetSpritePosition  (Creditos, -15000,0)
	
	// MenuTexto
	VText   = LoadImage("VText.png")
	VText   = CreateSprite (VText)
	SetSpritePosition  (VText, -15000,0)
	
	// MenuTexto
	VolumeOnText   = LoadImage("VolumeOnText.png")
	VolumeOnText   = CreateSprite (VolumeOnText)
	SetSpritePosition  (VolumeOnText, -15000,0)
	
	// MenuTexto
	VolumeOffText   = LoadImage("VolumeOffText.png")
	VolumeOffText   = CreateSprite (VolumeOffText)
	SetSpritePosition  (VolumeOffText, -15000,0)
	
	// Tarefa ----------------------------------------------------------
	
	// MenuTexto
	XText   = LoadImage("XText.png")
	XText   = CreateSprite (XText)
	SetSpritePosition  (XText, -15000,0)
	
	
	SetSpritePosition  (Obstaculo,      2000, 460)
	SetSpriteAnimation (Obstaculo,  158, 90,   2)
	PlaySprite         (Obstaculo, 5, 1,  1,   2)
	
	SetSpritePosition  (Obstaculo2,      3000, 590)
	SetSpriteAnimation (Obstaculo2,  158, 90,   2)
	PlaySprite         (Obstaculo2, 5, 1,  1,   2)
	
	SetSpritePosition  (Obstaculo3,      4000, 590)
	SetSpriteAnimation (Obstaculo3,  158, 90,   2)
	PlaySprite         (Obstaculo3, 5, 1,  1,   2)
	
	SetSpriteAnimation (Player,     158, 90,   2)
	PlaySprite         (Player,    5, 1,  1,   2)
	
	SetSpriteAnimation (Moedas,     30, 30,   2)
	PlaySprite         (Moedas,    5, 1,  1,   2)
	
	SetSpriteAnimation (Moedas2,     30, 30,   2)
	PlaySprite         (Moedas2,    5, 1,  1,   2)
	
// Bandeiras
	pause = 0
	FundoExcluido      = 0
	Pontos             = 0
	Level              = 1
	Vidas              = 3
	Nivel              = 25
	Bateu              = 0
	Bateu2             = 0
	Bateu3             = 0
	i                  = 0
	S1                 = 0
	S2                 = 0
	S2                 = 0
	
do	
	if GetPointerReleased()
    if (GetSpriteHitTest(MenuTex, GetPointerX(), GetPointerY()))
	//	MenuTex = getSpriteHitTest (MenuTex , getPointerX (), getPointerY ())
		pause = 1
		SetSpritePosition  (XText, 850, 155)
		SetSpritePosition  (VText, GetSpriteX (VText), GetSpritey (VText))
		SetSpritePosition  (BaseBranca, -60,0)
		SetSpritePosition  (ComoJogarText, 470, 187)
		SetSpritePosition  (VolumeOnText, 470, 300)
		SetSpritePosition  (VolumeOffText, 470, 400)
		SetSpritePosition  (CreditosText, 470, 550)
		SetSpritePosition  (Inicio, 10000, 300)
		SetSpritePosition  (ComoJogar, 10000, 300)
	endif
	endif
	
	if GetPointerReleased()
		if (GetSpriteHitTest(ComoJogarText, GetPointerX(), GetPointerY()))
		pause = 1
		SetSpritePosition  (XText, 850, 155)
		SetSpritePosition  (Inicio, 10000, 300)
		SetSpritePosition  (BaseBranca, 10000, 300)
		SetSpritePosition  (ComoJogarText, 10000, 300)
		SetSpritePosition  (VolumeOnText, 10000, 300)
		SetSpritePosition  (VolumeOffText, 10000, 300)
		SetSpritePosition  (CreditosText, 10000, 300)
		SetSpritePosition  (ComoJogar, -60,0)
		SetSpritePosition  (VText, 10000, 300)
	endif
	endif
	
	if GetPointerReleased()
		if (GetSpriteHitTest(VolumeOnText, GetPointerX(), GetPointerY()))
		pause = 1
		PlayMusic(30, 30)
		SetSpritePosition  (VText, 800, 300)
	endif
	endif
	
	if GetPointerReleased()
		if (GetSpriteHitTest(VolumeOffText, GetPointerX(), GetPointerY()))
		pause = 1
		StopMusic()
		SetSpritePosition  (VText, 800, 400)
	endif
	endif
	
	if GetPointerReleased()
		if (GetSpriteHitTest(CreditosText, GetPointerX(), GetPointerY()))
		pause = 1
		SetSpritePosition  (VolumeOnText, 10000, 300)
		SetSpritePosition  (VolumeOffText, 10000, 300)
		SetSpritePosition  (BaseBranca, 10000, 300)
		SetSpritePosition  (ComoJogarText, 10000, 300)
		SetSpritePosition  (XText, 850, 155)
		SetSpritePosition  (CreditosText, 10000, 300)
		SetSpritePosition  (Inicio, 10000, 300)
		SetSpritePosition  (ComoJogar, 10000, 300)
		SetSpritePosition  (Creditos, -60,0)
		SetSpritePosition  (VText, 10000, 300)
	endif
	endif
	
	if GetPointerReleased()
		if (GetSpriteHitTest(XText, GetPointerX(), GetPointerY()))
		Vidas             = Vidas
		Pontos            = Pontos
		pause = 0
		SetSpritePosition  (XText, -15000,0)
		SetSpritePosition  (Inicio, 10000, 300)
		SetSpritePosition  (BaseBranca, 10000, 300)
		SetSpritePosition  (ComoJogarText, 10000, 300)
		SetSpritePosition  (VolumeOnText, 10000, 300)
		SetSpritePosition  (VolumeOffText, 10000, 300)
		SetSpritePosition  (CreditosText, 10000, 300)
		SetSpritePosition  (ComoJogar, 10000, 300)
		SetSpritePosition  (Creditos, 10000, 300)
		SetSpritePosition  (VText, 10000, 300)
	endif
	endif
	
	if (Vidas > 0)  and FundoExcluido = 1
		PrintC("Vidas restantes: ")
		Print(Vidas)
		PrintC("Pontos: ")
		Print(Pontos)
	endif
	
	if (Vidas = 0)
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		Print("  ")
		PrintC("                                                     Pontos: ")
		Print(Pontos)
	endif
	
	//Inicia o Jogo ---------------------------------------------------------------------------------------
	if GetPointerReleased()
    if (GetSpriteHitTest(Inicio, GetPointerX(), GetPointerY()))
		SetSpritePosition  (Inicio, 1000000, 300)
		FundoExcluido = 1
		Vidas             = 3
		Pontos            = 0
		SetSpritePosition  (MenuTex, 1120, 5)
	endif
	endif
		
	if FundoExcluido = 1
		if pause = 0
		SetSpritePosition  ( BackGround, GetSpriteX(BackGround) - Nivel , GetSpriteY(BackGround))
		SetSpritePosition  ( Obstaculo, GetSpriteX(Obstaculo) - (Nivel + Pontos + 10) , GetSpriteY(Obstaculo))
		SetSpritePosition  ( Obstaculo2, GetSpriteX(Obstaculo2) - (Nivel + Pontos + 10) , GetSpriteY(Obstaculo2))
		SetSpritePosition  ( Obstaculo3, GetSpriteX(Obstaculo3) - (Nivel + Pontos + 10) , GetSpriteY(Obstaculo3))
		SetSpritePosition  ( Moedas, GetSpriteX(Moedas) - (Nivel + Pontos + 10) , 620)
		SetSpritePosition  ( Moedas2, GetSpriteX(Moedas2) - (Nivel + Pontos + 10) , 520)
		
	//Movimento Player
		//Para a Direita
	if GetRawKeyState(39) 
		SetSpritePosition ( Player, GetSpriteX(Player) + 10 , GetSpriteY(Player))
	endif
	
		//Se tentar sair da tela
	if (GetSpriteX(Player) < 49)	
		SetSpritePosition ( Player, 50, GetSpriteY(Player))
	endif 
	
		//Para a Esquerda
	if GetRawKeyState(37) 
		SetSpritePosition ( Player, GetSpriteX(Player) - 10, GetSpriteY(Player))
	endif
		//Se tentar sair da tela
	if (GetSpriteX(Player) > 1100)	
		SetSpritePosition ( Player, 1100, GetSpriteY(Player))
	endif
	
		//Para a Cima
	if GetRawKeyState(38) 
		SetSpritePosition ( Player, GetSpriteX(Player), GetSpriteY(Player) - 10)
	endif
	if (GetSpriteY(Player) < 460)	
		SetSpritePosition ( Player, GetSpriteX(Player), 460)
	endif
	
		//Para a Baixo
	if GetRawKeyState(40) 
		SetSpritePosition ( Player, GetSpriteX(Player), GetSpriteY(Player) + 10)
	endif
	if (GetSpriteY(Player) > 580)	
		SetSpritePosition ( Player, GetSpriteX(Player), 580)
	endif
	endif
	endif
	
	//Obstaculos
	if GetSpriteCollision (Player, Obstaculo) or GetSpriteCollision (Player, Obstaculo2) or GetSpriteCollision (Player, Obstaculo3)
		if Bateu = 0 
			Vidas   = Vidas - 1
			Bateu = 1
		if Bateu = 1
		endif
		endif
	else
		Bateu = 0
	endif 

	//Moedas
	if GetSpriteCollision (Player, Moedas)
		if Bateu2 = 0 
			SetSpritePosition  (Moedas, -1001, 0)
			Pontos = Pontos + 1
			Bateu2 = 1
		if Bateu2 = 1
		endif
		endif
	else 
		Bateu2 = 0
	endif 
	
	//Moedas
	if GetSpriteCollision (Player, Moedas2)
		if Bateu3 = 0 
			SetSpritePosition  (Moedas2, -1001, 0)
			Pontos = Pontos + 1
			Bateu3 = 1
		if Bateu3 = 1
		endif
		endif
	else 
		Bateu3 = 0
	endif 
	
	//Se perdeu
	if Vidas = 0 
		SetSpritePosition  (MenuTex, 1170000, 5)
		SetSpritePosition  (Inicio, -60, 0)
		SetSpritePosition  (Obstaculo, GetSpriteX(Obstaculo) + 1, 460)
		SetSpritePosition  (Player, -500, -500)
		SetSpritePosition  (Obstaculo, 2000, 460)
		SetSpritePosition  (Obstaculo2, 3000, 590)
		SetSpritePosition  (Obstaculo3, 4000, 590)
		SetSpritePosition  (Moedas, 4050, 590)
		SetSpritePosition  (Moedas2, 4050, 590)
		FundoExcluido     = 0
		Level             = 1
		Bateu             = 0
	endif
	
	S1 = Random2(1,2)
	S2 = Random2(1,2)
	S3 = Random2(1,2)
	
	//Volta obstaculo para o inicio
	if GetSpriteX(Obstaculo) < -1000
		if S1 = 1
			SetSpritePosition  (Obstaculo, 2000, 460)
		endif
		if S1 = 2
			SetSpritePosition  (Obstaculo, 2000, 590)
		endif
	endif
	
	if GetSpriteX(Obstaculo2) < -1000
		if S2 = 1
			SetSpritePosition  (Obstaculo2, 2000, 460)
		endif
		if S2 = 2
			SetSpritePosition  (Obstaculo2, 2000, 590)
		endif
	endif
	
	if GetSpriteX(Obstaculo3) < -1000
		if S3 = 1
			SetSpritePosition  (Obstaculo3, 2000, 460)
		endif
		if S3 = 2
			SetSpritePosition  (Obstaculo3, 2000, 590)
		endif
	endif
	
	if GetSpriteX(Moedas) < -1000
		SetSpritePosition  (Moedas, 1400, 590)
	endif
	
	if GetSpriteX(Moedas2) < -1000
		SetSpritePosition  (Moedas2, 1500, 520)
	endif

	//Volta fundo para o inicio
	if GetSpriteX(BackGround) < -1426
		SetSpritePosition  (BackGround, -60, 0)
	endif
    Sync()
loop
