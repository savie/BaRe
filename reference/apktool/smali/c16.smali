.class public final synthetic Lc16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcn6;

.field public final synthetic b:Lvh7;

.field public final synthetic c:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public synthetic constructor <init>(Lcn6;Lvh7;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc16;->a:Lcn6;

    .line 5
    .line 6
    iput-object p2, p0, Lc16;->b:Lvh7;

    .line 7
    .line 8
    iput-object p3, p0, Lc16;->c:Ljava/security/KeyStore$ProtectionParameter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lc16;->a:Lcn6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw16;

    .line 8
    .line 9
    iget-object v1, p0, Lc16;->b:Lvh7;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lw16;->a(Lvh7;)Ljava/security/cert/X509Certificate;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Lc16;->c:Ljava/security/KeyStore$ProtectionParameter;

    .line 16
    .line 17
    instance-of v3, p0, Ljava/security/KeyStore$PasswordProtection;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    check-cast p0, Ljava/security/KeyStore$PasswordProtection;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    sget-object v3, Lw16;->e:Lx53;

    .line 30
    .line 31
    iget-object v4, v0, Lw16;->b:Lwj8;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lx53;->u(Lwj8;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lw16;->g(Lvh7;)Lh80;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lh80;->e()Ljava/security/PublicKey;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v1, p0}, Lj16;->a(Ljava/security/PublicKey;Lvh7;[C)Lj16;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1, p0}, Lj16;->a(Ljava/security/PublicKey;Lvh7;[C)Lj16;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_1
    new-instance v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    aput-object v2, v1, v3

    .line 67
    .line 68
    invoke-direct {v0, p0, v1}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method
