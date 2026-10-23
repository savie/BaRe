.class public final Lwv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lc40;

.field public final b:Lry7;

.field public final c:Lgv7;

.field public final d:Lgv7;

.field public final e:Lgv7;

.field public final f:Lgv7;

.field public g:Lmq;

.field public final h:Lsv;

.field public i:Z


# direct methods
.method public constructor <init>(Lc40;Lry7;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwv;->a:Lc40;

    .line 8
    .line 9
    iput-object p2, p0, Lwv;->b:Lry7;

    .line 10
    .line 11
    new-instance p1, Lb7;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-direct {p1, p2}, Lb7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lgv7;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lwv;->c:Lgv7;

    .line 23
    .line 24
    new-instance p1, Lov;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Lov;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lgv7;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lwv;->d:Lgv7;

    .line 36
    .line 37
    new-instance p1, Lej;

    .line 38
    .line 39
    const/4 p2, 0x4

    .line 40
    invoke-direct {p1, p0, p2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lgv7;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lwv;->e:Lgv7;

    .line 49
    .line 50
    new-instance p1, Lfj;

    .line 51
    .line 52
    const/4 p2, 0x5

    .line 53
    invoke-direct {p1, p0, p2}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lgv7;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lwv;->f:Lgv7;

    .line 62
    .line 63
    new-instance p1, Lsv;

    .line 64
    .line 65
    invoke-direct {p1}, Lsv;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lwv;->h:Lsv;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwv;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Lwv;->h:Lsv;

    .line 6
    .line 7
    iget-object p0, p0, Lsv;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lkq;

    .line 33
    .line 34
    iget-object v0, v0, Lkq;->a:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_3
    const/4 p0, 0x1

    .line 48
    return p0
.end method
