.class public abstract Lsk9;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 2
    .line 3
    invoke-static {v0}, Lau9;->c(Ljava/lang/String;)Ld2a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lnh4;

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lht9;

    .line 15
    .line 16
    const-class v3, Lsf9;

    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Lht9;-><init>(Ljava/lang/Class;Lgt9;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lsk9;->a:Lht9;

    .line 22
    .line 23
    new-instance v1, Lb05;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

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
    sput-object v2, Lsk9;->b:Lft9;

    .line 34
    .line 35
    new-instance v1, Lhx0;

    .line 36
    .line 37
    const/16 v2, 0x14

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lhx0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lfs9;

    .line 43
    .line 44
    const-class v3, Lhf9;

    .line 45
    .line 46
    invoke-direct {v2, v3, v1}, Lfs9;-><init>(Ljava/lang/Class;Les9;)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lsk9;->c:Lfs9;

    .line 50
    .line 51
    new-instance v1, Lns0;

    .line 52
    .line 53
    const/16 v2, 0x16

    .line 54
    .line 55
    invoke-direct {v1, v2}, Lns0;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lds9;

    .line 59
    .line 60
    invoke-direct {v2, v0, v1}, Lds9;-><init>(Ld2a;Lcs9;)V

    .line 61
    .line 62
    .line 63
    sput-object v2, Lsk9;->d:Lds9;

    .line 64
    .line 65
    return-void
.end method

.method public static a(Lr0a;)Lrf9;
    .locals 2

    .line 1
    sget-object v0, Lzk9;->a:[I

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
    sget-object p0, Lrf9;->e:Lrf9;

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
    sget-object p0, Lrf9;->d:Lrf9;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lrf9;->c:Lrf9;

    .line 44
    .line 45
    return-object p0
.end method

.method public static b(Lrf9;)Lr0a;
    .locals 2

    .line 1
    sget-object v0, Lrf9;->c:Lrf9;

    .line 2
    .line 3
    if-eq v0, p0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lrf9;->d:Lrf9;

    .line 6
    .line 7
    if-eq v0, p0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lrf9;->e:Lrf9;

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

.method public static c(Lsf9;)Liw9;
    .locals 2

    .line 1
    iget v0, p0, Lsf9;->c:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Liw9;->v()Lhw9;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget p0, p0, Lsf9;->b:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lj79;->c()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 17
    .line 18
    check-cast v1, Liw9;

    .line 19
    .line 20
    invoke-static {v1, p0}, Liw9;->u(Liw9;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Liw9;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 31
    .line 32
    iget p0, p0, Lsf9;->c:I

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v1, "Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes."

    .line 43
    .line 44
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method
