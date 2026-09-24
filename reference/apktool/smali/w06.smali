.class public final synthetic Lw06;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic b:Ljava/security/PrivateKey;

.field public final synthetic c:Lvh7;

.field public final synthetic d:Ljava/security/cert/X509Certificate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/security/PrivateKey;Lvh7;Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lw06;->b:Ljava/security/PrivateKey;

    .line 7
    .line 8
    iput-object p3, p0, Lw06;->c:Lvh7;

    .line 9
    .line 10
    iput-object p4, p0, Lw06;->d:Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcn6;

    .line 2
    .line 3
    new-instance v0, Lb16;

    .line 4
    .line 5
    iget-object v1, p0, Lw06;->b:Ljava/security/PrivateKey;

    .line 6
    .line 7
    iget-object v2, p0, Lw06;->c:Lvh7;

    .line 8
    .line 9
    iget-object v3, p0, Lw06;->d:Ljava/security/cert/X509Certificate;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2, v3}, Lb16;-><init>(Lcn6;Ljava/security/PrivateKey;Lvh7;Ljava/security/cert/X509Certificate;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lw06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
