.class public final Lfv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    const-string p0, "box_file_cache_data"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "prefs"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object p0, v0

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p0, v0

    .line 30
    :goto_1
    if-eqz p0, :cond_2

    .line 31
    .line 32
    sget-object v0, Lw14;->a:Lgv7;

    .line 33
    .line 34
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    return-object v0
.end method
