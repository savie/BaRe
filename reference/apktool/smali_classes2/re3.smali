.class public abstract Lre3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lzc2;

.field public static final b:Ljava/util/List;

.field public static final c:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lig3;->b()Lig3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lig3;->a()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lzc2;

    .line 9
    .line 10
    iget-object v0, v0, Lig3;->c:Lwj6;

    .line 11
    .line 12
    sget-object v2, Lgy5;->d:Lgy5;

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lre3;->a:Lzc2;

    .line 18
    .line 19
    const/16 v0, 0x2f

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v0, 0x2e

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/16 v0, 0x23

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/16 v0, 0x24

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/16 v0, 0x5b

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/16 v0, 0x5d

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Character;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lre3;->b:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, Lqm;

    .line 66
    .line 67
    const/16 v1, 0xb

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lgv7;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lre3;->c:Lgv7;

    .line 78
    .line 79
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lzc2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lre3;->c()Lzc2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static b()Lzc2;
    .locals 2

    .line 1
    sget-object v0, Lre3;->a:Lzc2;

    .line 2
    .line 3
    const-string v1, "appData"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static c()Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->f()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "apps"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static d()Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->f()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "callLogBackupsCount"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cloud_v1"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static f()Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->g()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "tags"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static g()Lzc2;
    .locals 3

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    const-string v0, "FireHelper.currentCloudDir"

    .line 4
    .line 5
    invoke-static {v0}, Lqb1;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lre3;->k()Lzc2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "cloud_v1"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static h()Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->f()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "folders"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static i()Lzc2;
    .locals 2

    .line 1
    invoke-static {}, Lre3;->f()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltb1;->a:Ltb1;

    .line 6
    .line 7
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "smsBackupsCount"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 19
    .line 20
    invoke-static {v0, v1}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    throw v0
.end method

.method public static k()Lzc2;
    .locals 2

    .line 1
    sget-object v0, Lre3;->a:Lzc2;

    .line 2
    .line 3
    const-string v1, "users"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lre3;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static l()Lzc2;
    .locals 4

    .line 1
    invoke-static {}, Lre3;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lg42;->a:Z

    .line 6
    .line 7
    const-string v1, "AQK8OqW4gtD36Xte/DRxZA4zBTU1sr0y0N5jq+IeqAxKIILVpxc="

    .line 8
    .line 9
    invoke-static {v1}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "purchase_verifications/"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lre3;->a:Lzc2;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v4, Lre3;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :goto_1
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v4, 0x0

    .line 47
    const/16 v5, 0x3e

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static n(Lzc2;Laj8;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lzc2;->g(Laj8;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
