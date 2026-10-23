.class public final Lb2a;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lz1a;


# direct methods
.method public constructor <init>(Lz1a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb2a;->a:Lz1a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lb2a;->a:Lz1a;

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Ls1a;->c:Ls1a;

    .line 4
    .line 5
    iget-object v1, p0, Lz1a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Ls1a;->a:Lt1a;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljavax/crypto/Mac;

    .line 14
    .line 15
    iget-object p0, p0, Lz1a;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method
