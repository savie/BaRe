.class public Lwt4$f;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation runtime Lno6;
    name = "Rule"
.end annotation


# instance fields
.field private a:Lwt4$a;
    .annotation runtime Lat2;
        name = "AbortIncompleteMultipartUpload"
        required = false
    .end annotation
.end field

.field private b:Lwt4$c;
    .annotation runtime Lat2;
        name = "Expiration"
        required = false
    .end annotation
.end field

.field private c:Lpc3;
    .annotation runtime Lat2;
        name = "Filter"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ID"
        required = false
    .end annotation
.end field

.field private e:Lwt4$d;
    .annotation runtime Lat2;
        name = "NoncurrentVersionExpiration"
        required = false
    .end annotation
.end field

.field private f:Lwt4$e;
    .annotation runtime Lat2;
        name = "NoncurrentVersionTransition"
        required = false
    .end annotation
.end field

.field private g:Lxm7;
    .annotation runtime Lat2;
        name = "Status"
    .end annotation
.end field

.field private h:Lwt4$g;
    .annotation runtime Lat2;
        name = "Transition"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxm7;Lwt4$a;Lwt4$c;Lpc3;Ljava/lang/String;Lwt4$d;Lwt4$e;Lwt4$g;)V
    .locals 3
    .param p1    # Lxm7;
        .annotation runtime Lat2;
            name = "Status"
        .end annotation
    .end param
    .param p2    # Lwt4$a;
        .annotation runtime Lat2;
            name = "AbortIncompleteMultipartUpload"
            required = false
        .end annotation
    .end param
    .param p3    # Lwt4$c;
        .annotation runtime Lat2;
            name = "Expiration"
            required = false
        .end annotation
    .end param
    .param p4    # Lpc3;
        .annotation runtime Lat2;
            name = "Filter"
            required = false
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ID"
            required = false
        .end annotation
    .end param
    .param p6    # Lwt4$d;
        .annotation runtime Lat2;
            name = "NoncurrentVersionExpiration"
            required = false
        .end annotation
    .end param
    .param p7    # Lwt4$e;
        .annotation runtime Lat2;
            name = "NoncurrentVersionTransition"
            required = false
        .end annotation
    .end param
    .param p8    # Lwt4$g;
        .annotation runtime Lat2;
            name = "Transition"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    if-nez p6, :cond_1

    .line 10
    .line 11
    if-nez p7, :cond_1

    .line 12
    .line 13
    if-eqz p8, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "At least one of action (AbortIncompleteMultipartUpload, Expiration, NoncurrentVersionExpiration, NoncurrentVersionTransition or Transition) must be specified in a rule"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0xff

    .line 39
    .line 40
    if-gt v1, v2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string p0, "ID must not exceed 255 characters"

    .line 44
    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_3
    const-string p0, "ID must be non-empty string"

    .line 50
    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_4
    :goto_1
    iput-object p2, p0, Lwt4$f;->a:Lwt4$a;

    .line 56
    .line 57
    iput-object p3, p0, Lwt4$f;->b:Lwt4$c;

    .line 58
    .line 59
    iput-object p4, p0, Lwt4$f;->c:Lpc3;

    .line 60
    .line 61
    iput-object p5, p0, Lwt4$f;->d:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p6, p0, Lwt4$f;->e:Lwt4$d;

    .line 64
    .line 65
    iput-object p7, p0, Lwt4$f;->f:Lwt4$e;

    .line 66
    .line 67
    const-string p2, "Status must not be null"

    .line 68
    .line 69
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lwt4$f;->g:Lxm7;

    .line 73
    .line 74
    iput-object p8, p0, Lwt4$f;->h:Lwt4$g;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public a()Lwt4$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->a:Lwt4$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lwt4$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->b:Lwt4$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Lpc3;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->c:Lpc3;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lwt4$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->e:Lwt4$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Lwt4$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->f:Lwt4$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Lxm7;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->g:Lxm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Lwt4$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$f;->h:Lwt4$g;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lwt4$f;->a:Lwt4$a;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lwt4$f;->b:Lwt4$c;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lwt4$f;->c:Lpc3;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lwt4$f;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lwt4$f;->e:Lwt4$d;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lwt4$f;->f:Lwt4$e;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lwt4$f;->g:Lxm7;

    .line 38
    .line 39
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object p0, p0, Lwt4$f;->h:Lwt4$g;

    .line 44
    .line 45
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v7, ", expiration="

    .line 50
    .line 51
    const-string v8, ", filter="

    .line 52
    .line 53
    const-string v9, "Rule{abortIncompleteMultipartUpload="

    .line 54
    .line 55
    invoke-static {v9, v0, v7, v1, v8}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, ", id="

    .line 60
    .line 61
    const-string v7, ", noncurrentVersionExpiration="

    .line 62
    .line 63
    invoke-static {v0, v2, v1, v3, v7}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, ", noncurrentVersionTransition="

    .line 67
    .line 68
    const-string v2, ", status="

    .line 69
    .line 70
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, ", transition="

    .line 74
    .line 75
    const-string v2, "}"

    .line 76
    .line 77
    invoke-static {v0, v6, v1, p0, v2}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
