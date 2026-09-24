.class public final Lgd3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lod3;


# static fields
.field public static final a:Lgd3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgd3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgd3;->a:Lgd3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lnd3;
    .locals 4

    .line 1
    const-string p0, "key_filter_app_backup"

    .line 2
    .line 3
    sget-object v0, Lfd3;->All:Lfd3;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "prefs"

    .line 20
    .line 21
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lfd3;->getEntries()Ljx2;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lz3;

    .line 32
    .line 33
    invoke-virtual {p0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_1
    move-object v2, p0

    .line 38
    check-cast v2, Lw3;

    .line 39
    .line 40
    invoke-virtual {v2}, Lw3;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Lw3;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v3, v2

    .line 51
    check-cast v3, Lfd3;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    move-object v1, v2

    .line 64
    :cond_2
    check-cast v1, Lfd3;

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    :cond_3
    sget-object v1, Lfd3;->All:Lfd3;

    .line 69
    .line 70
    :cond_4
    return-object v1
.end method

.method public final c()Lnd3;
    .locals 0

    .line 1
    sget-object p0, Lfd3;->All:Lfd3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "key_filter_app_backup"

    .line 2
    .line 3
    return-object p0
.end method
