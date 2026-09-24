.class public final La49;
.super Ljd4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z

.field public final synthetic k:Lp49;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLp49;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, La49;->i:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, La49;->j:Z

    .line 7
    .line 8
    iput-object p4, p0, La49;->k:Lp49;

    .line 9
    .line 10
    iput-object p5, p0, La49;->l:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, La49;->m:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, La49;->n:Lcom/google/firebase/auth/FirebaseAuth;

    .line 15
    .line 16
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
    iget-object v2, p0, La49;->i:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Logging in as "

    .line 14
    .line 15
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " with empty reCAPTCHA token"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "Got reCAPTCHA token for login with email "

    .line 37
    .line 38
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-boolean v0, p0, La49;->j:Z

    .line 52
    .line 53
    iget-object v1, p0, La49;->m:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p0, La49;->l:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, p0, La49;->n:Lcom/google/firebase/auth/FirebaseAuth;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, v4, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 62
    .line 63
    iget-object v5, v4, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 64
    .line 65
    iget-object p0, p0, La49;->k:Lp49;

    .line 66
    .line 67
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Lif3;

    .line 71
    .line 72
    invoke-direct {v6, v4}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v4, Lm49;

    .line 79
    .line 80
    invoke-direct {v4, v2, v3, v1, p1}, Lm49;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v5}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 84
    .line 85
    .line 86
    iput-object p0, v4, Lh59;->d:Lp49;

    .line 87
    .line 88
    iput-object v6, v4, Lh59;->e:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v6, v4, Lh59;->f:Lb99;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_1
    iget-object p0, v4, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 98
    .line 99
    iget-object v0, v4, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 100
    .line 101
    new-instance v5, Ljf3;

    .line 102
    .line 103
    invoke-direct {v5, v4}, Ljf3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v4, Ls49;

    .line 110
    .line 111
    invoke-direct {v4, v2, v3, v1, p1}, Ls49;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v0}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 115
    .line 116
    .line 117
    iput-object v5, v4, Lh59;->e:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {p0, v4}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0
.end method
