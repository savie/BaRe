.class public final Lqr9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lca9;


# instance fields
.field public final a:Lit9;


# direct methods
.method public constructor <init>(Lit9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqr9;->a:Lit9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza([B)[B
    .locals 1

    .line 1
    iget-object p0, p0, Lqr9;->a:Lit9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lit9;->a([B)Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lrr9;

    .line 22
    .line 23
    :try_start_0
    iget-object v0, v0, Lrr9;->a:Lca9;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lca9;->zza([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const-string p0, "decryption failed"

    .line 31
    .line 32
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method
