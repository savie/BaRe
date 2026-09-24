.class public final Ln1a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lba9;


# static fields
.field public static final a:Lot9;

.field public static final b:Lot9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lot9;->j()Lyf1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lp1a;->a:Lp1a;

    .line 6
    .line 7
    sget-object v2, Lyp9;->b:Lyp9;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lp1a;->b:Lp1a;

    .line 13
    .line 14
    sget-object v2, Lyp9;->c:Lyp9;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lp1a;->c:Lp1a;

    .line 20
    .line 21
    sget-object v2, Lyp9;->d:Lyp9;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ln1a;->a:Lot9;

    .line 31
    .line 32
    invoke-static {}, Lot9;->j()Lyf1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lr1a;->a:Lr1a;

    .line 37
    .line 38
    sget-object v2, Laq9;->c:Laq9;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lr1a;->b:Lr1a;

    .line 44
    .line 45
    sget-object v2, Laq9;->b:Laq9;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lr1a;->c:Lr1a;

    .line 51
    .line 52
    sget-object v2, Laq9;->d:Laq9;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lyf1;->u(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lyf1;->t()Lot9;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Ln1a;->b:Lot9;

    .line 62
    .line 63
    return-void
.end method

.method public static final a(Lxp9;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lxp9;->b:Lxp9;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "HmacSha1"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lxp9;->c:Lxp9;

    .line 13
    .line 14
    if-eq p0, v0, :cond_4

    .line 15
    .line 16
    sget-object v0, Lxp9;->d:Lxp9;

    .line 17
    .line 18
    if-eq p0, v0, :cond_3

    .line 19
    .line 20
    sget-object v0, Lxp9;->e:Lxp9;

    .line 21
    .line 22
    if-eq p0, v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lxp9;->f:Lxp9;

    .line 25
    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    const-string p0, "HmacSha512"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "hash unsupported for EciesAeadHkdf: "

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_2
    const-string p0, "HmacSha384"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    const-string p0, "HmacSha256"

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    const-string p0, "HmacSha224"

    .line 54
    .line 55
    return-object p0
.end method
