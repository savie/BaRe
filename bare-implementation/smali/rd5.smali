.class public final Lrd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/TreeSet;

.field public final b:Ljava/lang/Object;

.field public volatile c:Z

.field public final d:Lix0;


# direct methods
.method public constructor <init>(Lix0;Ljava/util/TreeSet;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lrd5;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lrd5;->d:Lix0;

    .line 8
    .line 9
    iput-object p2, p0, Lrd5;->a:Ljava/util/TreeSet;

    .line 10
    .line 11
    iput-object p3, p0, Lrd5;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrd5;->a:Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lxr7;

    .line 18
    .line 19
    iget-object v2, p0, Lrd5;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v3, v1, Lxr7;->b:Ln3;

    .line 22
    .line 23
    invoke-virtual {v3}, Ln3;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lxr7;->c:Lx74;

    .line 30
    .line 31
    invoke-interface {v1, p0, v2, v3}, Lx74;->a(Lrd5;Ljava/lang/Object;Ljava/lang/Iterable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-boolean v0, p0, Lrd5;->c:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lrd5;->b:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-class v1, Lje3;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v1, 0xc

    .line 52
    .line 53
    const-class v2, Lmd2;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lrd5;->b:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lrd5;->d:Lix0;

    .line 70
    .line 71
    iget-object v0, v0, Lix0;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lju7;

    .line 74
    .line 75
    new-instance v2, Lje3;

    .line 76
    .line 77
    iget-object p0, p0, Lrd5;->b:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-direct {v2, p0, v1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Lrd5;->b:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lrd5;->d:Lix0;

    .line 99
    .line 100
    iget-object v0, v0, Lix0;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lju7;

    .line 103
    .line 104
    new-instance v2, Lmd2;

    .line 105
    .line 106
    iget-object p0, p0, Lrd5;->b:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-direct {v2, p0, v1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method
