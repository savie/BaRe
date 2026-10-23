.class public final Lrn7;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public transient c:Lod2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lf96;->i:Lf96;

    .line 8
    .line 9
    iput-object v0, p0, Lrn7;->c:Lod2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lrn7;->c:Lod2;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const-class v2, Ljava/lang/Object;

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lqn7;

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    invoke-direct {v2, v3, v0}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lrn7;->c:Lod2;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p3, Lc87;->a:Lv77;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ls65;->c(Ljava/lang/Class;)Lgc8;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p3, v2, v3}, Lc87;->k(Lgc8;Lkp0;)Lem4;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v0, v2}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eq v1, v0, :cond_1

    .line 47
    .line 48
    iput-object v0, p0, Lrn7;->c:Lod2;

    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
