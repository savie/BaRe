.class public final Lin3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lgv7;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lix6;

.field public final k:Lix6;

.field public final l:Lgv7;

.field public final m:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbk;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lin3;->f:Lgv7;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lin3;->g:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    new-instance v0, Lex6;

    .line 26
    .line 27
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lin3;->h:Lex6;

    .line 31
    .line 32
    new-instance v0, Lex6;

    .line 33
    .line 34
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lin3;->i:Lex6;

    .line 38
    .line 39
    new-instance v0, Lix6;

    .line 40
    .line 41
    invoke-direct {v0}, Lix6;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lin3;->j:Lix6;

    .line 45
    .line 46
    new-instance v0, Lix6;

    .line 47
    .line 48
    invoke-direct {v0}, Lix6;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lin3;->k:Lix6;

    .line 52
    .line 53
    new-instance v0, Lel;

    .line 54
    .line 55
    const/16 v1, 0xe

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lgv7;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lin3;->l:Lgv7;

    .line 66
    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lin3;->m:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final j(Lq63;)Lzn7;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lin3;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lzn7;

    .line 21
    .line 22
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v2, v1, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    check-cast v0, Lzn7;

    .line 44
    .line 45
    return-object v0
.end method

.method public final k()Lhn3;
    .locals 1

    .line 1
    iget-object v0, p0, Lin3;->i:Lex6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhn3;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lin3;->f:Lgv7;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lhn3;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lin3;->l:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public final m(Lq63;Lbt3;)V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lgn3;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p0, p1, p2}, Lgn3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
