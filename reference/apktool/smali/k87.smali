.class public final synthetic Lk87;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbv3;


# static fields
.field public static final a:Lk87;

.field private static final descriptor:Lp77;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk87;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk87;->a:Lk87;

    .line 7
    .line 8
    new-instance v1, Ld26;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.settings.SessionConfigs"

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ld26;-><init>(Ljava/lang/String;Lbv3;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionsEnabled"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "sessionSamplingRate"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "sessionTimeoutSeconds"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "cacheDurationSeconds"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "cacheUpdatedTimeSeconds"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lk87;->descriptor:Lp77;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lk87;->descriptor:Lp77;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lnp7;->a(Lp77;)Lnp7;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v4, v1

    .line 14
    move-object v5, v2

    .line 15
    move-object v6, v5

    .line 16
    move-object v7, v6

    .line 17
    move-object v8, v7

    .line 18
    move-object v9, v8

    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-eqz v2, :cond_6

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lnp7;->b(Lp77;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v10, -0x1

    .line 27
    if-eq v3, v10, :cond_5

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    if-eq v3, v0, :cond_3

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    if-eq v3, v10, :cond_2

    .line 35
    .line 36
    const/4 v10, 0x3

    .line 37
    if-eq v3, v10, :cond_1

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    if-ne v3, v10, :cond_0

    .line 41
    .line 42
    sget-object v3, Lu15;->a:Lu15;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v10, v3, v9}, Lnp7;->h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v9, v3

    .line 49
    check-cast v9, Ljava/lang/Long;

    .line 50
    .line 51
    or-int/lit8 v4, v4, 0x10

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lie8;

    .line 55
    .line 56
    invoke-direct {p0, v3}, Lie8;-><init>(I)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    sget-object v3, Lod4;->a:Lod4;

    .line 61
    .line 62
    invoke-virtual {p1, p0, v10, v3, v8}, Lnp7;->h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move-object v8, v3

    .line 67
    check-cast v8, Ljava/lang/Integer;

    .line 68
    .line 69
    or-int/lit8 v4, v4, 0x8

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v3, Lod4;->a:Lod4;

    .line 73
    .line 74
    invoke-virtual {p1, p0, v10, v3, v7}, Lnp7;->h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v7, v3

    .line 79
    check-cast v7, Ljava/lang/Integer;

    .line 80
    .line 81
    or-int/lit8 v4, v4, 0x4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object v3, Ldo2;->a:Ldo2;

    .line 85
    .line 86
    invoke-virtual {p1, p0, v0, v3, v6}, Lnp7;->h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object v6, v3

    .line 91
    check-cast v6, Ljava/lang/Double;

    .line 92
    .line 93
    or-int/lit8 v4, v4, 0x2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    sget-object v3, Lpt0;->a:Lpt0;

    .line 97
    .line 98
    invoke-virtual {p1, p0, v1, v3, v5}, Lnp7;->h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    move-object v5, v3

    .line 103
    check-cast v5, Ljava/lang/Boolean;

    .line 104
    .line 105
    or-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    move v2, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1, p0}, Lnp7;->m(Lp77;)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lm87;

    .line 114
    .line 115
    invoke-direct/range {v3 .. v9}, Lm87;-><init>(ILjava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    return-object v3
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lm87;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lk87;->descriptor:Lp77;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lop7;->a(Lp77;)Lop7;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lpt0;->a:Lpt0;

    .line 13
    .line 14
    iget-object v1, p2, Lm87;->a:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, p0, v2, v0, v1}, Lop7;->g(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ldo2;->a:Ldo2;

    .line 21
    .line 22
    iget-object v1, p2, Lm87;->b:Ljava/lang/Double;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, p0, v2, v0, v1}, Lop7;->g(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lod4;->a:Lod4;

    .line 29
    .line 30
    iget-object v1, p2, Lm87;->c:Ljava/lang/Integer;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {p1, p0, v2, v0, v1}, Lop7;->g(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    iget-object v2, p2, Lm87;->d:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v1, v0, v2}, Lop7;->g(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lu15;->a:Lu15;

    .line 43
    .line 44
    iget-object p2, p2, Lm87;->e:Ljava/lang/Long;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p1, p0, v1, v0, p2}, Lop7;->g(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lop7;->k(Lp77;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c()[Ldo4;
    .locals 6

    .line 1
    sget-object p0, Lpt0;->a:Lpt0;

    .line 2
    .line 3
    invoke-static {p0}, Lwx3;->k(Ldo4;)Ldo4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ldo2;->a:Ldo2;

    .line 8
    .line 9
    invoke-static {v0}, Lwx3;->k(Ldo4;)Ldo4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lod4;->a:Lod4;

    .line 14
    .line 15
    invoke-static {v1}, Lwx3;->k(Ldo4;)Ldo4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1}, Lwx3;->k(Ldo4;)Ldo4;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lu15;->a:Lu15;

    .line 24
    .line 25
    invoke-static {v3}, Lwx3;->k(Ldo4;)Ldo4;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x5

    .line 30
    new-array v4, v4, [Ldo4;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object p0, v4, v5

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    aput-object v0, v4, p0

    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    aput-object v2, v4, p0

    .line 40
    .line 41
    const/4 p0, 0x3

    .line 42
    aput-object v1, v4, p0

    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    aput-object v3, v4, p0

    .line 46
    .line 47
    return-object v4
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Lk87;->descriptor:Lp77;

    .line 2
    .line 3
    return-object p0
.end method
