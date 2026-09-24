.class public final Lh49;
.super Lh59;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lxz5;


# direct methods
.method public constructor <init>(Lxz5;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lh59;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const-string v0, "credential cannot be null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lh49;->n:Lxz5;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "linkPhoneAuthCredential"

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lcom/google/android/gms/tasks/TaskCompletionSource;Lw49;)V
    .locals 3

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
    iget-object p1, p0, Lh59;->d:Lp49;

    .line 11
    .line 12
    iget-object p1, p1, Lp49;->a:Lb69;

    .line 13
    .line 14
    invoke-virtual {p1}, Lb69;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lh49;->n:Lxz5;

    .line 19
    .line 20
    invoke-static {v0}, Lly8;->U(Lxz5;)Ln69;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lh59;->b:Ls79;

    .line 31
    .line 32
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p2, Lw49;->a:Lke;

    .line 39
    .line 40
    new-instance v1, Lyf1;

    .line 41
    .line 42
    sget-object v2, Lw49;->b:Lu50;

    .line 43
    .line 44
    invoke-direct {v1, p0, v2}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Ls02;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Ls02;->a:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object v1, p0, Ls02;->b:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Ls02;->c:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {p2, p1, p0}, Lke;->r(Ljava/lang/String;Ln59;)V

    .line 68
    .line 69
    .line 70
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
    iget-object v1, p0, Lh59;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Llo9;

    .line 12
    .line 13
    iget-object v2, p0, Lh59;->h:Lb69;

    .line 14
    .line 15
    invoke-interface {v1, v2, v0}, Llo9;->b(Lb69;Lp49;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lf0a;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lf0a;-><init>(Lp49;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lh59;->f(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
