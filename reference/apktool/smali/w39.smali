.class public final Lw39;
.super Ljd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Z

.field public final synthetic j:Lp49;

.field public final synthetic k:Lau2;

.field public final synthetic l:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;ZLp49;Lau2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lw39;->i:Z

    .line 5
    .line 6
    iput-object p3, p0, Lw39;->j:Lp49;

    .line 7
    .line 8
    iput-object p4, p0, Lw39;->k:Lau2;

    .line 9
    .line 10
    iput-object p1, p0, Lw39;->l:Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final P(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5

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
    const-string v0, "Email link login/reauth with empty reCAPTCHA token"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Got reCAPTCHA token for login/reauth with email link"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-boolean v0, p0, Lw39;->i:Z

    .line 21
    .line 22
    iget-object v1, p0, Lw39;->k:Lau2;

    .line 23
    .line 24
    iget-object v2, p0, Lw39;->l:Lcom/google/firebase/auth/FirebaseAuth;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v2, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 31
    .line 32
    iget-object p0, p0, Lw39;->j:Lp49;

    .line 33
    .line 34
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lif3;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v2, Ll49;

    .line 46
    .line 47
    invoke-direct {v2, v1, p1}, Ll49;-><init>(Lau2;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 51
    .line 52
    .line 53
    iput-object p0, v2, Lh59;->d:Lp49;

    .line 54
    .line 55
    iput-object v4, v2, Lh59;->e:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v4, v2, Lh59;->f:Lb99;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_1
    iget-object p0, v2, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 65
    .line 66
    iget-object v0, v2, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 67
    .line 68
    new-instance v3, Ljf3;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Ljf3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v2, Le49;

    .line 77
    .line 78
    invoke-direct {v2, v1, p1}, Le49;-><init>(Lau2;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, v2, Lh59;->e:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
