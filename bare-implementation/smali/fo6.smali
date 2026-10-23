.class public final Lfo6;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Leo6;

.field public final synthetic d:Lo21;

.field public final synthetic e:Lo41;


# direct methods
.method public constructor <init>(Leo6;Lo21;Lo41;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfo6;->c:Leo6;

    .line 2
    .line 3
    iput-object p2, p0, Lfo6;->d:Lo21;

    .line 4
    .line 5
    iput-object p3, p0, Lfo6;->e:Lo41;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Lfo6;

    .line 2
    .line 3
    iget-object v1, p0, Lfo6;->d:Lo21;

    .line 4
    .line 5
    iget-object v2, p0, Lfo6;->e:Lo41;

    .line 6
    .line 7
    iget-object p0, p0, Lfo6;->c:Leo6;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lfo6;-><init>(Leo6;Lo21;Lo41;Ljv1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lfo6;->b:Ljava/lang/Object;

    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lfo6;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfo6;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfo6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lfo6;->a:I

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
    iget-object p0, p0, Lfo6;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljv1;

    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lfo6;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lxx1;

    .line 29
    .line 30
    invoke-interface {p1}, Lxx1;->d()Lox1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Llv1;->b:Llv1;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Lrx1;

    .line 44
    .line 45
    new-instance v0, Lc98;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lc98;-><init>(Lrx1;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Lp3;

    .line 51
    .line 52
    invoke-static {p1, v0}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lfo6;->c:Leo6;

    .line 57
    .line 58
    iget-object v0, v0, Leo6;->h:Ljava/lang/ThreadLocal;

    .line 59
    .line 60
    new-instance v2, Lq28;

    .line 61
    .line 62
    invoke-direct {v2, p1, v0}, Lq28;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v2}, Lox1;->plus(Lox1;)Lox1;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lfo6;->d:Lo21;

    .line 70
    .line 71
    iput-object v0, p0, Lfo6;->b:Ljava/lang/Object;

    .line 72
    .line 73
    iput v1, p0, Lfo6;->a:I

    .line 74
    .line 75
    iget-object v1, p0, Lfo6;->e:Lo41;

    .line 76
    .line 77
    invoke-static {p1, v1, p0}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p0, Lyx1;->a:Lyx1;

    .line 82
    .line 83
    if-ne p1, p0, :cond_2

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_2
    move-object p0, v0

    .line 87
    :goto_0
    invoke-interface {p0, p1}, Ljv1;->resumeWith(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lbe8;->a:Lbe8;

    .line 91
    .line 92
    return-object p0
.end method
