.class public final synthetic Lorg/swiftapps/swiftbackup/intro/b;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/swiftapps/swiftbackup/intro/d$b;

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
    sget-object v0, Lorg/swiftapps/swiftbackup/intro/d$b;->SIGNED_IN:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Y(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 24
    .line 25
    return-object p0
.end method
