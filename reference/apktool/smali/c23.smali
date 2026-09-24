.class public abstract Lc23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "/systemType.properties"

    .line 2
    .line 3
    sget-object v1, Ld23;->O:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-class v2, Ld23;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    move-object v1, v2

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception v2

    .line 27
    move-object v3, v2

    .line 28
    move-object v2, v1

    .line 29
    move-object v1, v3

    .line 30
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_2
    move-exception v0

    .line 35
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    :catch_0
    move-object v1, v2

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 44
    .line 45
    .line 46
    :catch_1
    :cond_1
    :goto_3
    sput-object v1, Lc23;->a:Ljava/util/Properties;

    .line 47
    .line 48
    return-void
.end method
