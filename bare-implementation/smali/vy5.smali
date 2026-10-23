.class public final Lvy5;
.super Lrh4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Z

.field public k:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrh4;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lvy5;->f:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lvy5;->k:Z

    .line 8
    .line 9
    invoke-static {}, Lqj5;->c()Lqj5;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lrh4;->a:Ljava/util/List;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lrh4;->b:Ljava/util/List;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lrh4;->e:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b()Lgn6;
    .locals 3

    .line 1
    sget-object v0, Lgn6;->d:Lgn6;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lk55;->j()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lrh4;->d:Lzd7;
    :try_end_0
    .catch Lkn5; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    iget-boolean v2, p0, Lvy5;->f:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lrh4;->close()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lrh4;->a:Ljava/util/List;

    .line 24
    .line 25
    instance-of v0, v0, Lqj5;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lrh4;->a:Ljava/util/List;

    .line 35
    .line 36
    :cond_1
    invoke-super {p0}, Lrh4;->b()Lgn6;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lvy5;->k:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lgn6;->e:Lgn6;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lvy5;->k:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lvy5;->b()Lgn6;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_2
    return-object v0

    .line 57
    :catch_0
    invoke-virtual {p0}, Lrh4;->close()V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method
