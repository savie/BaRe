.class public abstract Lmk9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lht9;

.field public static final b:Lft9;

.field public static final c:Lfs9;

.field public static final d:Lds9;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lma2;

    .line 8
    .line 9
    const/16 v2, 0x19

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lma2;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lht9;

    .line 15
    .line 16
    const-class v3, Lgf9;

    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lmk9;->a:Lht9;

    .line 22
    .line 23
    new-instance v1, Lq34;

    .line 24
    .line 25
    const/16 v2, 0x12

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lq34;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lft9;

    .line 31
    .line 32
    invoke-direct {v2, v0, v1}, Lft9;-><init>(Ld2a;Let9;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lmk9;->b:Lft9;

    .line 36
    .line 37
    new-instance v1, Lfk8;

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    invoke-direct {v1, v2}, Lfk8;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lfs9;

    .line 44
    .line 45
    const-class v3, Lte9;

    .line 46
    .line 47
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lmk9;->c:Lfs9;

    .line 51
    .line 52
    new-instance v1, Llv1;

    .line 53
    .line 54
    const/16 v2, 0x16

    .line 55
    .line 56
    invoke-direct {v1, v2}, Llv1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lds9;

    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 62
    .line 63
    .line 64
    sput-object v2, Lmk9;->d:Lds9;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Lr0a;)Lef9;
    .locals 2

    .line 1
    sget-object v0, Ltk9;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    sget-object p0, Lef9;->e:Lef9;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 25
    .line 26
    invoke-virtual {p0}, Lr0a;->zza()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const-string v1, "Unable to parse OutputPrefixType: "

    .line 31
    .line 32
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    sget-object p0, Lef9;->d:Lef9;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lef9;->c:Lef9;

    .line 44
    .line 45
    return-object p0
.end method

.method public static b(Ljy9;)Lff9;
    .locals 2

    .line 1
    sget-object v0, Ltk9;->b:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    sget-object p0, Lff9;->k:Lff9;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljy9;->zza()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-string v1, "Unable to parse HashType: "

    .line 34
    .line 35
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    sget-object p0, Lff9;->f:Lff9;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lff9;->e:Lff9;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    sget-object p0, Lff9;->d:Lff9;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    sget-object p0, Lff9;->c:Lff9;

    .line 53
    .line 54
    return-object p0
.end method

.method public static c(Lef9;)Lr0a;
    .locals 2

    .line 1
    sget-object v0, Lef9;->c:Lef9;

    .line 2
    .line 3
    if-eq v0, p0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lef9;->d:Lef9;

    .line 6
    .line 7
    if-eq v0, p0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lef9;->e:Lef9;

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lr0a;->e:Lr0a;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "Unable to serialize variant: "

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    sget-object p0, Lr0a;->f:Lr0a;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lr0a;->c:Lr0a;

    .line 36
    .line 37
    return-object p0
.end method

.method public static d(Lgf9;)Lpy9;
    .locals 3

    .line 1
    invoke-static {}, Lpy9;->x()Loy9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lgf9;->d:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lj79;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 11
    .line 12
    check-cast v2, Lpy9;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lpy9;->u(Lpy9;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lgf9;->f:Lff9;

    .line 18
    .line 19
    sget-object v1, Lff9;->c:Lff9;

    .line 20
    .line 21
    if-eq v1, p0, :cond_4

    .line 22
    .line 23
    sget-object v1, Lff9;->d:Lff9;

    .line 24
    .line 25
    if-eq v1, p0, :cond_3

    .line 26
    .line 27
    sget-object v1, Lff9;->e:Lff9;

    .line 28
    .line 29
    if-eq v1, p0, :cond_2

    .line 30
    .line 31
    sget-object v1, Lff9;->f:Lff9;

    .line 32
    .line 33
    if-eq v1, p0, :cond_1

    .line 34
    .line 35
    sget-object v1, Lff9;->k:Lff9;

    .line 36
    .line 37
    if-ne v1, p0, :cond_0

    .line 38
    .line 39
    sget-object p0, Ljy9;->f:Ljy9;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v1, "Unable to serialize HashType "

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    sget-object p0, Ljy9;->d:Ljy9;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object p0, Ljy9;->e:Ljy9;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object p0, Ljy9;->k:Ljy9;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sget-object p0, Ljy9;->c:Ljy9;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0}, Lj79;->c()V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 73
    .line 74
    check-cast v1, Lpy9;

    .line 75
    .line 76
    invoke-static {v1, p0}, Lpy9;->v(Lpy9;Ljy9;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lpy9;

    .line 84
    .line 85
    return-object p0
.end method
