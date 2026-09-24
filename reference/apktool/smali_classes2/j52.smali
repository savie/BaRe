.class public final Lj52;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

.field public final synthetic c:Lmt3;

.field public final synthetic d:Lbt3;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Lmt3;Lbt3;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lj52;->c:Lmt3;

    .line 4
    .line 5
    iput-object p3, p0, Lj52;->d:Lbt3;

    .line 6
    .line 7
    iput-object p4, p0, Lj52;->e:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lj52;

    .line 2
    .line 3
    iget-object v3, p0, Lj52;->d:Lbt3;

    .line 4
    .line 5
    iget-object v4, p0, Lj52;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lj52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 8
    .line 9
    iget-object v2, p0, Lj52;->c:Lmt3;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lj52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Lmt3;Lbt3;Ljava/lang/String;Ljv1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lj52;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lj52;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lj52;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lj52;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Ldz5;->a:Ldz5;

    .line 23
    .line 24
    invoke-static {}, Ldz5;->d()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sget-object p1, Lzn4;->a:Lzn4;

    .line 29
    .line 30
    new-instance v2, Li52;

    .line 31
    .line 32
    iget-object v3, p0, Lj52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 33
    .line 34
    iget-object v4, p0, Lj52;->c:Lmt3;

    .line 35
    .line 36
    iget-object v6, p0, Lj52;->d:Lbt3;

    .line 37
    .line 38
    iget-object v7, p0, Lj52;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct/range {v2 .. v7}, Li52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Lmt3;ZLbt3;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lj52;->a:I

    .line 44
    .line 45
    invoke-static {v2, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object p1, Lyx1;->a:Lyx1;

    .line 50
    .line 51
    if-ne p0, p1, :cond_2

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 55
    .line 56
    return-object p0
.end method
