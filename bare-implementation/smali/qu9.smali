.class public abstract Lqu9;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lns0;

    .line 8
    .line 9
    const/16 v2, 0x1b

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lns0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lht9;

    .line 15
    .line 16
    const-class v3, Leu9;

    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lqu9;->a:Lht9;

    .line 22
    .line 23
    new-instance v1, Lq34;

    .line 24
    .line 25
    const/16 v2, 0x17

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
    sput-object v2, Lqu9;->b:Lft9;

    .line 36
    .line 37
    new-instance v1, Lhx0;

    .line 38
    .line 39
    const/16 v2, 0x19

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lhx0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lfs9;

    .line 45
    .line 46
    const-class v3, Lzt9;

    .line 47
    .line 48
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lqu9;->c:Lfs9;

    .line 52
    .line 53
    new-instance v1, Lma2;

    .line 54
    .line 55
    const/16 v2, 0x1c

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lma2;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lds9;

    .line 61
    .line 62
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 63
    .line 64
    .line 65
    sput-object v2, Lqu9;->d:Lds9;

    .line 66
    .line 67
    return-void
.end method

.method public static a(Lr0a;)Ldu9;
    .locals 2

    .line 1
    sget-object v0, Lru9;->a:[I

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
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

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
    sget-object p0, Ldu9;->f:Ldu9;

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
    sget-object p0, Ldu9;->e:Ldu9;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Ldu9;->d:Ldu9;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    sget-object p0, Ldu9;->c:Ldu9;

    .line 47
    .line 48
    return-object p0
.end method

.method public static b(Ldu9;)Lr0a;
    .locals 2

    .line 1
    sget-object v0, Ldu9;->c:Ldu9;

    .line 2
    .line 3
    if-eq v0, p0, :cond_3

    .line 4
    .line 5
    sget-object v0, Ldu9;->d:Ldu9;

    .line 6
    .line 7
    if-eq v0, p0, :cond_2

    .line 8
    .line 9
    sget-object v0, Ldu9;->f:Ldu9;

    .line 10
    .line 11
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    sget-object v0, Ldu9;->e:Ldu9;

    .line 14
    .line 15
    if-ne v0, p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lr0a;->d:Lr0a;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "Unable to serialize variant: "

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    sget-object p0, Lr0a;->e:Lr0a;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    sget-object p0, Lr0a;->f:Lr0a;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    sget-object p0, Lr0a;->c:Lr0a;

    .line 43
    .line 44
    return-object p0
.end method
