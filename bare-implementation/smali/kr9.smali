.class public final Lkr9;
.super Ljd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Lp49;

.field public final synthetic j:Lau2;

.field public final synthetic k:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lp49;Lau2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkr9;->i:Lp49;

    .line 5
    .line 6
    iput-object p3, p0, Lkr9;->j:Lau2;

    .line 7
    .line 8
    iput-object p1, p0, Lkr9;->k:Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final P(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "FirebaseAuth"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Linking email account with empty reCAPTCHA token"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Got reCAPTCHA token for linking email account"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lkr9;->k:Lcom/google/firebase/auth/FirebaseAuth;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 25
    .line 26
    new-instance v6, Lif3;

    .line 27
    .line 28
    invoke-direct {v6, v0}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lkr9;->i:Lp49;

    .line 32
    .line 33
    iget-object v4, p0, Lkr9;->j:Lau2;

    .line 34
    .line 35
    move-object v5, p1

    .line 36
    invoke-virtual/range {v1 .. v6}, Lix0;->l(Lcom/google/firebase/FirebaseApp;Lp49;Ld80;Ljava/lang/String;Lyb9;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
