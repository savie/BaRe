.class public final Lv72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Leo6;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lmt3;


# direct methods
.method public constructor <init>(Ljv1;Lmt3;Leo6;ZZ)V
    .locals 0

    .line 1
    iput-object p3, p0, Lv72;->b:Leo6;

    .line 2
    .line 3
    iput-boolean p4, p0, Lv72;->c:Z

    .line 4
    .line 5
    iput-boolean p5, p0, Lv72;->d:Z

    .line 6
    .line 7
    iput-object p2, p0, Lv72;->e:Lmt3;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-direct {p0, p2, p1}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lv72;

    .line 2
    .line 3
    iget-boolean v5, p0, Lv72;->d:Z

    .line 4
    .line 5
    iget-object v2, p0, Lv72;->e:Lmt3;

    .line 6
    .line 7
    iget-object v3, p0, Lv72;->b:Leo6;

    .line 8
    .line 9
    iget-boolean v4, p0, Lv72;->c:Z

    .line 10
    .line 11
    move-object v1, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lv72;-><init>(Ljv1;Lmt3;Leo6;ZZ)V

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
    invoke-virtual {p0, p1, p2}, Lv72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lv72;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lv72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lv72;->a:I

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
    return-object p1

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
    iget-object p1, p0, Lv72;->b:Leo6;

    .line 23
    .line 24
    invoke-virtual {p1}, Leo6;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Leo6;->i()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    :cond_2
    iget-boolean p1, p0, Lv72;->c:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    move v6, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    move v6, p1

    .line 44
    :goto_0
    new-instance v2, Lu72;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iget-object v4, p0, Lv72;->e:Lmt3;

    .line 48
    .line 49
    iget-object v5, p0, Lv72;->b:Leo6;

    .line 50
    .line 51
    iget-boolean v7, p0, Lv72;->d:Z

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lu72;-><init>(Ljv1;Lmt3;Leo6;ZZ)V

    .line 54
    .line 55
    .line 56
    iput v1, p0, Lv72;->a:I

    .line 57
    .line 58
    invoke-virtual {v5, v7, v2, p0}, Leo6;->k(ZLqt3;Lkv1;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object p1, Lyx1;->a:Lyx1;

    .line 63
    .line 64
    if-ne p0, p1, :cond_4

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_4
    return-object p0
.end method
