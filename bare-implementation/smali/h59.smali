.class public abstract Lh59;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ls79;

.field public c:Lcom/google/firebase/FirebaseApp;

.field public d:Lp49;

.field public e:Ljava/lang/Object;

.field public f:Lb99;

.field public g:Lwc9;

.field public h:Lb69;

.field public i:Lx59;

.field public j:Ld80;

.field public k:Lwc9;

.field public l:Lc69;

.field public m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls79;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ls79;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lh59;->b:Ls79;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lh59;->a:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh59;->m:Z

    .line 3
    .line 4
    iget-object p0, p0, Lh59;->g:Lwc9;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lwc9;->h(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V
.end method

.method public final d(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    .line 1
    const-string v0, "firebaseApp cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 7
    .line 8
    return-void
.end method

.method public abstract e()V
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh59;->m:Z

    .line 3
    .line 4
    iget-object p0, p0, Lh59;->g:Lwc9;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lwc9;->h(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
