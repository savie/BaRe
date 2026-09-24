.class public final Lb64;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lc64;


# direct methods
.method public constructor <init>(Lc64;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb64;->a:Lc64;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lb64;

    .line 2
    .line 3
    iget-object p0, p0, Lb64;->a:Lc64;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lb64;-><init>(Lc64;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lb64;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lb64;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lb64;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ld45;->b:Ld45;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    iget-object p0, p0, Lb64;->a:Lc64;

    .line 25
    .line 26
    iget-object p0, p0, La55;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "postLoginWork()"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object p0, Lah8;->Companion:Lah8$a;

    .line 34
    .line 35
    new-instance v0, Lzi1;

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    invoke-direct {v0, v2}, Lzi1;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lah8$a;->fromDatabase(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 47
    .line 48
    invoke-static {p0, p1}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method
