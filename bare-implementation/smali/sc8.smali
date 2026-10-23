.class public abstract Lsc8;
.super Lrc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lmc8;

.field public final b:Lkp0;


# direct methods
.method public constructor <init>(Lmc8;Lkp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsc8;->a:Lmc8;

    .line 5
    .line 6
    iput-object p2, p0, Lsc8;->b:Lkp0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public e(Lfk4;Lnw8;)Lnw8;
    .locals 2

    .line 1
    iget-object v0, p2, Lnw8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p2, Lnw8;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p2, Lnw8;->b:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object p0, p0, Lsc8;->a:Lmc8;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lmc8;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v1, v0}, Lmc8;->c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    iput-object p0, p2, Lnw8;->c:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    iget-object p0, p2, Lnw8;->c:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez p0, :cond_4

    .line 27
    .line 28
    iget-object p0, p2, Lnw8;->f:Lmm4;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p2, Lnw8;->g:Z

    .line 32
    .line 33
    sget-object v0, Lmm4;->d:Lmm4;

    .line 34
    .line 35
    if-ne p0, v0, :cond_2

    .line 36
    .line 37
    iget-object p0, p2, Lnw8;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :cond_2
    sget-object v0, Lmm4;->e:Lmm4;

    .line 44
    .line 45
    if-ne p0, v0, :cond_3

    .line 46
    .line 47
    iget-object p0, p2, Lnw8;->a:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lfk4;->S(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-object p2

    .line 53
    :cond_4
    invoke-virtual {p1, p2}, Lfk4;->g0(Lnw8;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public f(Lfk4;Lnw8;)Lnw8;
    .locals 1

    .line 1
    if-nez p2, :cond_2

    .line 2
    .line 3
    iget-object p0, p2, Lnw8;->f:Lmm4;

    .line 4
    .line 5
    sget-object v0, Lmm4;->d:Lmm4;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lfk4;->q()V

    .line 10
    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    sget-object v0, Lmm4;->e:Lmm4;

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lfk4;->n()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-object p2

    .line 21
    :cond_2
    invoke-virtual {p1, p2}, Lfk4;->h0(Lnw8;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method
