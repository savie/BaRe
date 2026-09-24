.class public final Lw72;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lox1;

.field public final synthetic c:Leo6;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lmt3;


# direct methods
.method public constructor <init>(Lox1;Leo6;ZZLmt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw72;->b:Lox1;

    .line 2
    .line 3
    iput-object p2, p0, Lw72;->c:Leo6;

    .line 4
    .line 5
    iput-boolean p3, p0, Lw72;->d:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lw72;->e:Z

    .line 8
    .line 9
    iput-object p5, p0, Lw72;->f:Lmt3;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lw72;

    .line 2
    .line 3
    iget-boolean v4, p0, Lw72;->e:Z

    .line 4
    .line 5
    iget-object v5, p0, Lw72;->f:Lmt3;

    .line 6
    .line 7
    iget-object v1, p0, Lw72;->b:Lox1;

    .line 8
    .line 9
    iget-object v2, p0, Lw72;->c:Leo6;

    .line 10
    .line 11
    iget-boolean v3, p0, Lw72;->d:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lw72;-><init>(Lox1;Leo6;ZZLmt3;Ljv1;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lw72;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lw72;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lw72;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lw72;->a:I

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
    new-instance v2, Lv72;

    .line 23
    .line 24
    iget-object v4, p0, Lw72;->f:Lmt3;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iget-object v5, p0, Lw72;->c:Leo6;

    .line 28
    .line 29
    iget-boolean v6, p0, Lw72;->d:Z

    .line 30
    .line 31
    iget-boolean v7, p0, Lw72;->e:Z

    .line 32
    .line 33
    invoke-direct/range {v2 .. v7}, Lv72;-><init>(Ljv1;Lmt3;Leo6;ZZ)V

    .line 34
    .line 35
    .line 36
    iput v1, p0, Lw72;->a:I

    .line 37
    .line 38
    iget-object p1, p0, Lw72;->b:Lox1;

    .line 39
    .line 40
    invoke-static {p1, v2, p0}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lyx1;->a:Lyx1;

    .line 45
    .line 46
    if-ne p0, p1, :cond_2

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    return-object p0
.end method
