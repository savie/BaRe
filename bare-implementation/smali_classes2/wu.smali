.class public final Lwu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Lyu;
    .locals 3

    .line 1
    const-string v0, "restore_runtime_permissions"

    .line 2
    .line 3
    sget-object v1, Lyu;->Granted:Lyu;

    .line 4
    .line 5
    invoke-virtual {v1}, Lyu;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "prefs"

    .line 19
    .line 20
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lwu;->b(Ljava/lang/Integer;)Lyu;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static b(Ljava/lang/Integer;)Lyu;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget-object v0, Lyu;->Companion:Lwu;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lyu;->getEntries()Ljx2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lz3;

    .line 17
    .line 18
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    move-object v1, v0

    .line 23
    check-cast v1, Lw3;

    .line 24
    .line 25
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v2, v1

    .line 36
    check-cast v2, Lyu;

    .line 37
    .line 38
    invoke-virtual {v2}, Lyu;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ne v2, p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Lyu;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return-object v1

    .line 52
    :cond_3
    :goto_1
    sget-object p0, Lyu;->Granted:Lyu;

    .line 53
    .line 54
    return-object p0
.end method

.method public static c(Landroidx/fragment/app/u;Lyu;Lmt3;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lyu;->getEntries()Ljx2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Lz3;

    .line 21
    .line 22
    new-instance v3, Lw3;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lw3;-><init>(Lz3;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lyu;

    .line 38
    .line 39
    invoke-virtual {v2}, Lyu;->asDisplayString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 48
    new-array v2, v2, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, [Ljava/lang/String;

    .line 55
    .line 56
    check-cast v0, Lkx2;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance v2, Lhv1;

    .line 63
    .line 64
    const v3, 0x7f140160

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Ls35;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-direct {v4, p0, v3, v2, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 74
    .line 75
    .line 76
    const p0, 0x7f130473

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p0}, Lv75;->v(I)V

    .line 80
    .line 81
    .line 82
    check-cast v1, [Ljava/lang/CharSequence;

    .line 83
    .line 84
    new-instance p0, Lvu;

    .line 85
    .line 86
    invoke-direct {p0, p1, v0, p2}, Lvu;-><init>(ILkx2;Lmt3;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1, p1, p0}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 93
    .line 94
    .line 95
    return-void
.end method
