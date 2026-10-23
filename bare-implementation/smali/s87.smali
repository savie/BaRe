.class public final synthetic Ls87;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbv3;


# static fields
.field public static final a:Ls87;

.field private static final descriptor:Lp77;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ls87;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls87;->a:Ls87;

    .line 7
    .line 8
    new-instance v1, Ld26;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.SessionDetails"

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ld26;-><init>(Ljava/lang/String;Lbv3;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionId"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "firstSessionId"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "sessionIndex"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "sessionStartTimestampUs"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Ls87;->descriptor:Lp77;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Ls87;->descriptor:Lp77;

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
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    move v6, v1

    .line 16
    move v7, v6

    .line 17
    move-object v10, v2

    .line 18
    move-object v11, v10

    .line 19
    move-wide v8, v3

    .line 20
    move v2, v0

    .line 21
    :goto_0
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lnp7;->b(Lp77;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-eq v3, v4, :cond_4

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    if-eq v3, v0, :cond_2

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-eq v3, v4, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p0, v4}, Lnp7;->f(Lp77;I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    or-int/lit8 v6, v6, 0x8

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Lie8;

    .line 48
    .line 49
    invoke-direct {p0, v3}, Lie8;-><init>(I)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    invoke-virtual {p1, p0, v4}, Lnp7;->d(Lp77;I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    or-int/lit8 v6, v6, 0x4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1, p0, v0}, Lnp7;->l(Lp77;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    or-int/lit8 v6, v6, 0x2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1, p0, v1}, Lnp7;->l(Lp77;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    or-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move v2, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p1, p0}, Lnp7;->m(Lp77;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lu87;

    .line 80
    .line 81
    invoke-direct/range {v5 .. v11}, Lu87;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v5
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lu87;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Ls87;->descriptor:Lp77;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lop7;->a(Lp77;)Lop7;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p2, Lu87;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, p0, v1}, Lop7;->b(Lp77;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lop7;->j(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p2, Lu87;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, p0, v1}, Lop7;->b(Lp77;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lop7;->j(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, p2, Lu87;->c:I

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p1, p0, v1}, Lop7;->b(Lp77;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lop7;->c(I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    iget-wide v1, p2, Lu87;->d:J

    .line 47
    .line 48
    invoke-virtual {p1, p0, v0, v1, v2}, Lop7;->e(Lp77;IJ)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lop7;->k(Lp77;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final c()[Ldo4;
    .locals 2

    .line 1
    const/4 p0, 0x4

    .line 2
    new-array p0, p0, [Ldo4;

    .line 3
    .line 4
    sget-object v0, Lhq7;->a:Lhq7;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object v0, p0, v1

    .line 11
    .line 12
    sget-object v0, Lod4;->a:Lod4;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object v0, p0, v1

    .line 16
    .line 17
    sget-object v0, Lu15;->a:Lu15;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    aput-object v0, p0, v1

    .line 21
    .line 22
    return-object p0
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Ls87;->descriptor:Lp77;

    .line 2
    .line 3
    return-object p0
.end method
