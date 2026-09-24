.class public final Ljl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lc40;

.field public final b:Lky7;

.field public final c:Lgv7;

.field public final d:Lgv7;

.field public e:Lvl;

.field public f:La00;

.field public final g:Lhl;

.field public h:Z


# direct methods
.method public constructor <init>(Lc40;Lky7;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ljl;->a:Lc40;

    .line 8
    .line 9
    iput-object p2, p0, Ljl;->b:Lky7;

    .line 10
    .line 11
    new-instance p1, Lfj;

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-direct {p1, p0, p2}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lgv7;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Ljl;->c:Lgv7;

    .line 23
    .line 24
    new-instance p1, Lgj;

    .line 25
    .line 26
    invoke-direct {p1, p0, p2}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lgv7;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Ljl;->d:Lgv7;

    .line 35
    .line 36
    new-instance p1, Lhl;

    .line 37
    .line 38
    invoke-direct {p1}, Lhl;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Ljl;->g:Lhl;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljl;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object p0, p0, Ljl;->g:Lhl;

    .line 6
    .line 7
    iget-object v0, p0, Lhl;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ltl;

    .line 33
    .line 34
    iget-boolean v1, v1, Ltl;->b:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    :goto_0
    iget-object p0, p0, Lhl;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lxz;

    .line 65
    .line 66
    iget-boolean v1, v0, Lxz;->b:Z

    .line 67
    .line 68
    if-nez v1, :cond_6

    .line 69
    .line 70
    iget-object v0, v0, Lxz;->d:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 82
    return p0

    .line 83
    :cond_6
    :goto_3
    const/4 p0, 0x1

    .line 84
    return p0
.end method
