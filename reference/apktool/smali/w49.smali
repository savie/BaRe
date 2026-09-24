.class public final Lw49;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Lu50;


# instance fields
.field public final a:Lke;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu50;

    .line 2
    .line 3
    const-string v1, "FirebaseAuthFallback:"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "FirebaseAuth"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lw49;->b:Lu50;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lj15;->g()Lj15;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lke;

    .line 19
    .line 20
    new-instance v2, Lg59;

    .line 21
    .line 22
    invoke-direct {v2, p1, v0}, Lg59;-><init>(Lcom/google/firebase/FirebaseApp;Lj15;)V

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x12

    .line 26
    .line 27
    invoke-direct {v1, v2, p1}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lw49;->a:Lke;

    .line 31
    .line 32
    new-instance p0, Lp59;

    .line 33
    .line 34
    invoke-direct {p0, p2}, Lp59;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lnh;Lv49;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lnh;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lxz5;

    .line 10
    .line 11
    invoke-static {p1}, Lly8;->U(Lxz5;)Ln69;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lyf1;

    .line 16
    .line 17
    sget-object v1, Lw49;->b:Lu50;

    .line 18
    .line 19
    invoke-direct {v0, p2, v1}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lw49;->a:Lke;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lke;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Lg59;

    .line 30
    .line 31
    new-instance v1, Lro;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lro;-><init>(Lke;Lyf1;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p2, Lg59;->a:Ld59;

    .line 37
    .line 38
    iget-object p2, p2, Lg59;->f:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "/verifyPhoneNumber"

    .line 41
    .line 42
    invoke-virtual {p0, v0, p2}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Lm69;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lxt1;

    .line 54
    .line 55
    invoke-static {p2, p1, v1, v0, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final b(Lu59;Lv49;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lu59;->c:Lau2;

    .line 5
    .line 6
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lu59;->c:Lau2;

    .line 10
    .line 11
    iget-object p1, p1, Lu59;->e:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Lyf1;

    .line 14
    .line 15
    sget-object v2, Lw49;->b:Lu50;

    .line 16
    .line 17
    invoke-direct {v1, p2, v2}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lw49;->a:Lke;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p2, v0, Lau2;->e:Z

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p2, v0, Lau2;->d:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v2, Lju7;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0, p1, v1}, Lju7;-><init>(Lke;Lau2;Ljava/lang/String;Lyf1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, v2}, Lke;->r(Ljava/lang/String;Ln59;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p2, Lu59;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {p2, v0, v2, p1}, Lu59;-><init>(Lau2;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, v1}, Lke;->s(Lu59;Lyf1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final c(Lj69;Lv49;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lyf1;

    .line 8
    .line 9
    sget-object v1, Lw49;->b:Lu50;

    .line 10
    .line 11
    invoke-direct {v0, p2, v1}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lw49;->a:Lke;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p1, Lj69;->G:Z

    .line 21
    .line 22
    iget-object p2, p0, Lke;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Lg59;

    .line 25
    .line 26
    new-instance v1, Lib;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lib;-><init>(Lke;Lyf1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p0, p2, Lg59;->a:Ld59;

    .line 35
    .line 36
    iget-object p2, p2, Lg59;->f:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "/verifyAssertion"

    .line 39
    .line 40
    invoke-virtual {p0, v0, p2}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance v0, Lk69;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lxt1;

    .line 52
    .line 53
    invoke-static {p2, p1, v1, v0, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv49;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p5}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lyf1;

    .line 11
    .line 12
    sget-object v1, Lw49;->b:Lu50;

    .line 13
    .line 14
    invoke-direct {v0, p5, v1}, Lyf1;-><init>(Lv49;Lu50;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lw49;->a:Lke;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p5, Lk90;

    .line 29
    .line 30
    invoke-direct {p5, p1, p2, p3, p4}, Lk90;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lke;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lg59;

    .line 36
    .line 37
    new-instance p2, Lw00;

    .line 38
    .line 39
    invoke-direct {p2, p0, v0}, Lw00;-><init>(Lke;Lyf1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p1, Lg59;->a:Ld59;

    .line 46
    .line 47
    iget-object p1, p1, Lg59;->f:Ljava/lang/String;

    .line 48
    .line 49
    const-string p3, "/verifyPassword"

    .line 50
    .line 51
    invoke-virtual {p0, p3, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p3, Ll69;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lxt1;

    .line 63
    .line 64
    invoke-static {p1, p5, p2, p3, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
