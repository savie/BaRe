.class public final synthetic Lq80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq80;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq80;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lq80;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lq80;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lzy1;

    .line 9
    .line 10
    iget-object p0, p0, Lzy1;->h:Lsy1;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ls02;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lsy1;->c:Lyf1;

    .line 19
    .line 20
    iget-object v1, v0, Lyf1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lca3;

    .line 23
    .line 24
    iget-object v2, v0, Lyf1;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    iget-object v1, v1, Lca3;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lsy1;->f()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object p0, p0, Lsy1;->j:Laz1;

    .line 54
    .line 55
    invoke-interface {p0, v0}, Laz1;->hasCrashDataForSession(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x2

    .line 65
    const-string v1, "FirebaseCrashlytics"

    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    const-string p0, "Found previous crash marker."

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static {v1, p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p0, v0, Lyf1;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lca3;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/io/File;

    .line 87
    .line 88
    iget-object p0, p0, Lca3;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Ljava/io/File;

    .line 91
    .line 92
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 104
    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
