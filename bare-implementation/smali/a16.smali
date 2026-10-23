.class public final synthetic La16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcn6;

.field public final synthetic b:Lvh7;

.field public final synthetic c:[C


# direct methods
.method public synthetic constructor <init>(Lcn6;Lvh7;[C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La16;->a:Lcn6;

    .line 5
    .line 6
    iput-object p2, p0, La16;->b:Lvh7;

    .line 7
    .line 8
    iput-object p3, p0, La16;->c:[C

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, La16;->a:Lcn6;

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
    sget-object v1, Lw16;->e:Lx53;

    .line 10
    .line 11
    iget-object v2, v0, Lw16;->b:Lwj8;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lx53;->u(Lwj8;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, La16;->b:Lvh7;

    .line 18
    .line 19
    iget-object p0, p0, La16;->c:[C

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lw16;->g(Lvh7;)Lh80;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lh80;->e()Ljava/security/PublicKey;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, v2, p0}, Lj16;->a(Ljava/security/PublicKey;Lvh7;[C)Lj16;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-virtual {v0, v2}, Lw16;->a(Lvh7;)Ljava/security/cert/X509Certificate;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v2, p0}, Lj16;->a(Ljava/security/PublicKey;Lvh7;[C)Lj16;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
