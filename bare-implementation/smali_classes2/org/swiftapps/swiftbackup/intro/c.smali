.class public final synthetic Lorg/swiftapps/swiftbackup/intro/c;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 9
    .line 10
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/swiftapps/swiftbackup/intro/a;->a:[I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    aget p1, v0, p1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    if-ne p1, v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/intro/d;->k:Lex6;

    .line 40
    .line 41
    sget-object v0, Lorg/swiftapps/swiftbackup/intro/d$a;->IDLE:Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->X()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/intro/d;->k:Lex6;

    .line 60
    .line 61
    sget-object v0, Lorg/swiftapps/swiftbackup/intro/d$a;->IDLE:Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 70
    .line 71
    return-object p0
.end method
