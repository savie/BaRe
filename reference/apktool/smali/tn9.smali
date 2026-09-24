.class public abstract Ltn9;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lfa9;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lht9;

    .line 13
    .line 14
    const-class v3, Lxj9;

    .line 15
    .line 16
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Ltn9;->a:Lht9;

    .line 20
    .line 21
    new-instance v1, Lfo8;

    .line 22
    .line 23
    const/16 v2, 0x19

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lfo8;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lft9;

    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Lft9;-><init>(Ld2a;Let9;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Ltn9;->b:Lft9;

    .line 34
    .line 35
    new-instance v1, Lhi9;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v1, v2}, Lhi9;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lfs9;

    .line 42
    .line 43
    const-class v3, Lmj9;

    .line 44
    .line 45
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 46
    .line 47
    .line 48
    sput-object v2, Ltn9;->c:Lfs9;

    .line 49
    .line 50
    new-instance v1, Lb05;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lds9;

    .line 56
    .line 57
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 58
    .line 59
    .line 60
    sput-object v2, Ltn9;->d:Lds9;

    .line 61
    .line 62
    return-void
.end method

.method public static a(Lr0a;)Lrf9;
    .locals 2

    .line 1
    sget-object v0, Lzn9;->a:[I

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
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lrf9;->k:Lrf9;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 19
    .line 20
    invoke-virtual {p0}, Lr0a;->zza()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-string v1, "Unable to parse OutputPrefixType: "

    .line 25
    .line 26
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    sget-object p0, Lrf9;->f:Lrf9;

    .line 35
    .line 36
    return-object p0
.end method
