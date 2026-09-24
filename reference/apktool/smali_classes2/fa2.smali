.class public final Lfa2;
.super La55;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lex6;

.field public final d:Lex6;

.field public final e:Lix6;

.field public final f:Lex6;

.field public final g:Lex6;

.field public final h:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, La55;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfa2;->c:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lnp6$e;->INSTANCE:Lnp6$e;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lfa2;->d:Lex6;

    .line 22
    .line 23
    new-instance v0, Lix6;

    .line 24
    .line 25
    invoke-direct {v0}, Lix6;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lfa2;->e:Lix6;

    .line 29
    .line 30
    new-instance v0, Lex6;

    .line 31
    .line 32
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lfa2;->f:Lex6;

    .line 36
    .line 37
    new-instance v0, Lex6;

    .line 38
    .line 39
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lfa2;->g:Lex6;

    .line 43
    .line 44
    new-instance v0, Lix6;

    .line 45
    .line 46
    invoke-direct {v0}, Lix6;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lfa2;->h:Lix6;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 1
    iget-object p0, p0, Lfa2;->g:Lex6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lea2;

    .line 8
    .line 9
    new-instance v1, Lea2;

    .line 10
    .line 11
    sget-object v2, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    .line 13
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Lyc6;->b()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lyc6;->f()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {}, Lyc6;->g()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v6, v5

    .line 57
    check-cast v6, Lzc6;

    .line 58
    .line 59
    iget v6, v6, Lzc6;->b:I

    .line 60
    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {v1, v4}, Lea2;-><init>(Ljava/util/ArrayList;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method
