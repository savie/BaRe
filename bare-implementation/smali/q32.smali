.class public final synthetic Lq32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

.field public final synthetic b:Lf91;

.field public final synthetic c:Landroid/os/CancellationSignal;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:Lt22;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq32;->a:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lq32;->b:Lf91;

    .line 7
    .line 8
    iput-object p3, p0, Lq32;->c:Landroid/os/CancellationSignal;

    .line 9
    .line 10
    iput-object p4, p0, Lq32;->d:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object p5, p0, Lq32;->e:Lt22;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    iget-object v3, p0, Lq32;->d:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object v4, p0, Lq32;->e:Lt22;

    .line 4
    .line 5
    iget-object v0, p0, Lq32;->a:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lq32;->b:Lf91;

    .line 8
    .line 9
    iget-object v2, p0, Lq32;->c:Landroid/os/CancellationSignal;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$1UTL-i4hwhJk_BYM4Zcx0ZRJ19w(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
