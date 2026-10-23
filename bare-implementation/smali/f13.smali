.class public abstract Lf13;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpu;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgv7;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lf13;->a:Lgv7;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method public static final b(Ljava/io/File;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {p0, v1}, Lf13;->c(Ljava/io/File;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    return v0
.end method

.method public static final c(Ljava/io/File;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, p0

    .line 32
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    array-length p1, v0

    .line 62
    move v3, v1

    .line 63
    move v4, v2

    .line 64
    :goto_1
    if-ge v3, p1, :cond_3

    .line 65
    .line 66
    aget-object v5, v0, v3

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v1}, Lf13;->c(Ljava/io/File;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    move v4, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move v4, v1

    .line 82
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    return v1

    .line 110
    :cond_6
    :goto_3
    return v2
.end method

.method public static final d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lf13;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method
