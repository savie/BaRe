.class public final synthetic Lvi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lq05;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final synthetic c:Liz4;

.field public final synthetic d:Z

.field public final synthetic e:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;


# direct methods
.method public synthetic constructor <init>(Lq05;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvi2;->a:Lq05;

    .line 5
    .line 6
    iput-object p2, p0, Lvi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lvi2;->c:Liz4;

    .line 9
    .line 10
    iput-boolean p4, p0, Lvi2;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lvi2;->e:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 2
    .line 3
    sget-object v0, Lzi2;->b:[I

    .line 4
    .line 5
    iget-object v1, p0, Lvi2;->a:Lq05;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lvi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 16
    .line 17
    iget-boolean v4, p0, Lvi2;->d:Z

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lvi2;->e:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Lzn4;->a:Lzn4;

    .line 40
    .line 41
    new-instance v1, Lm20;

    .line 42
    .line 43
    invoke-direct {v1, p0, v0, v4}, Lm20;-><init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lmk2;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lvi2;->c:Liz4;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_3
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    sget-object p0, Lzn4;->a:Lzn4;

    .line 70
    .line 71
    new-instance p0, Lik2;

    .line 72
    .line 73
    invoke-direct {p0, v2, v0, v4}, Lik2;-><init>(Lgm;Lmk2;Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 80
    .line 81
    return-object p0
.end method
