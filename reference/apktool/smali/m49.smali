.class public final Lm49;
.super Lh59;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lh59;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const-string v0, "email cannot be null or empty"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "password cannot be null or empty"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lm49;->n:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p0, Lm49;->o:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lm49;->p:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lm49;->q:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "reauthenticateWithEmailPasswordWithData"

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V
    .locals 8

    .line 1
    new-instance v0, Lwc9;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lh59;->g:Lwc9;

    .line 9
    .line 10
    iget-object v6, p0, Lm49;->q:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v7, p0, Lh59;->b:Ls79;

    .line 13
    .line 14
    iget-object v3, p0, Lm49;->n:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p0, Lm49;->o:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lm49;->p:Ljava/lang/String;

    .line 19
    .line 20
    move-object v2, p2

    .line 21
    invoke-virtual/range {v2 .. v7}, Lw49;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv49;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    iget-object v1, p0, Lh59;->i:Lx59;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lix0;->o(Lcom/google/firebase/FirebaseApp;Lx59;)Lp49;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lh59;->d:Lp49;

    .line 10
    .line 11
    iget-object v1, v1, Lp49;->b:Lw1a;

    .line 12
    .line 13
    iget-object v1, v1, Lw1a;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, v0, Lp49;->b:Lw1a;

    .line 16
    .line 17
    iget-object v2, v2, Lw1a;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lh59;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Llo9;

    .line 28
    .line 29
    iget-object v2, p0, Lh59;->h:Lb69;

    .line 30
    .line 31
    invoke-interface {v1, v2, v0}, Llo9;->b(Lb69;Lp49;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lf0a;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lf0a;-><init>(Lp49;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lh59;->f(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 44
    .line 45
    const/16 v1, 0x4280

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lh59;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
