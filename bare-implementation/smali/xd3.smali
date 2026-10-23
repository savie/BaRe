.class public final Lxd3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lod3;


# static fields
.field public static final a:Lxd3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxd3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxd3;->a:Lxd3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lnd3;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxd3;->e()Lwd3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b(Lnd3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwd3;->Selected:Lwd3;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lsv2;->a:Lsv2;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lxd3;->g(Ljava/util/Set;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Lod3;->b(Lnd3;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c()Lnd3;
    .locals 0

    .line 1
    sget-object p0, Lwd3;->All:Lwd3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "key_filter_labels_temp"

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lwd3;
    .locals 5

    .line 1
    const-string v0, "key_filter_labels_temp"

    .line 2
    .line 3
    sget-object v1, Lwd3;->All:Lwd3;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "prefs"

    .line 20
    .line 21
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_0
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lwd3;->getEntries()Ljx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lz3;

    .line 32
    .line 33
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    move-object v3, v0

    .line 38
    check-cast v3, Lw3;

    .line 39
    .line 40
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Lwd3;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    move-object v2, v3

    .line 64
    :cond_2
    check-cast v2, Lwd3;

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    :cond_3
    sget-object v2, Lwd3;->All:Lwd3;

    .line 69
    .line 70
    :cond_4
    sget-object v0, Lwd3;->Selected:Lwd3;

    .line 71
    .line 72
    if-ne v2, v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lxd3;->f()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_5

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    :cond_5
    sget-object p0, Lwd3;->All:Lwd3;

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_6
    return-object v2
.end method

.method public final f()Ljava/util/Set;
    .locals 4

    .line 1
    sget-object p0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_5

    .line 5
    .line 6
    const-string v1, "selected_labels_filter_temp"

    .line 7
    .line 8
    sget-object v2, Lsv2;->a:Lsv2;

    .line 9
    .line 10
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, p0

    .line 18
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Llr4;->a:Llr4;

    .line 40
    .line 41
    invoke-static {v2}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object p0, v0

    .line 59
    :goto_2
    if-eqz p0, :cond_4

    .line 60
    .line 61
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    return-object v0

    .line 67
    :cond_5
    const-string p0, "prefs"

    .line 68
    .line 69
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final g(Ljava/util/Set;)V
    .locals 2

    .line 1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-string v1, "selected_labels_filter_temp"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lxd3;->f()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Lwd3;->Selected:Lwd3;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lxd3;->b(Lnd3;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    const-string p0, "editor"

    .line 34
    .line 35
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method
