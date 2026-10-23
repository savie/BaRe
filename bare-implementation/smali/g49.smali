.class public final Lg49;
.super Lh59;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lia9;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lh59;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "RECAPTCHA_ENTERPRISE"

    .line 7
    .line 8
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lia9;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p1, v1}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lg49;->n:Lia9;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "getRecaptchaConfig"

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V
    .locals 2

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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lg49;->n:Lia9;

    .line 14
    .line 15
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p2, Lw49;->a:Lke;

    .line 19
    .line 20
    new-instance v0, Lyf1;

    .line 21
    .line 22
    sget-object v1, Lw49;->b:Lu50;

    .line 23
    .line 24
    iget-object p0, p0, Lh59;->b:Ls79;

    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p2, Lke;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lg59;

    .line 35
    .line 36
    new-instance v1, Lkm8;

    .line 37
    .line 38
    invoke-direct {v1, p2, v0}, Lkm8;-><init>(Lke;Lyf1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lg59;->b:Lc59;

    .line 45
    .line 46
    iget-object p0, p0, Lg59;->f:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "/recaptchaConfig"

    .line 49
    .line 50
    invoke-virtual {p2, v0, p0}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "&clientType=CLIENT_TYPE_ANDROID&version=RECAPTCHA_ENTERPRISE"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p1, p1, Lia9;->b:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "&tenantId="

    .line 72
    .line 73
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :cond_1
    :goto_0
    new-instance p1, Lc69;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object p2, p2, Lao;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p2, Lxt1;

    .line 85
    .line 86
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 96
    .line 97
    const v0, 0xea60

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p0}, Lxt1;->a(Ljava/net/HttpURLConnection;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v1, p1}, Lms8;->V(Ljava/net/HttpURLConnection;Ln59;Lf59;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v1, p0}, Lkm8;->zza(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_1
    const-string p0, "<<Network Error>>"

    .line 120
    .line 121
    invoke-virtual {v1, p0}, Lkm8;->zza(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_2
    const-string p0, "TIMEOUT"

    .line 126
    .line 127
    invoke-virtual {v1, p0}, Lkm8;->zza(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh59;->l:Lc69;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lh59;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
