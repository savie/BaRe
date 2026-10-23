.class public final Lti3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final synthetic a:Lli3;

.field public final synthetic b:Llh6;


# direct methods
.method public constructor <init>(Lli3;Llh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lti3;->a:Lli3;

    .line 5
    .line 6
    iput-object p2, p0, Lti3;->b:Llh6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lsi3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lsi3;

    .line 7
    .line 8
    iget v1, v0, Lsi3;->c:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lsi3;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lsi3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lsi3;-><init>(Lti3;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lsi3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lsi3;->c:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object p2, p0, Lti3;->a:Lli3;

    .line 51
    .line 52
    iput v2, v0, Lsi3;->c:I

    .line 53
    .line 54
    invoke-interface {p2, p1, v0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sget-object p1, Lyx1;->a:Lyx1;

    .line 59
    .line 60
    if-ne p0, p1, :cond_3

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_3
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 64
    .line 65
    return-object p0

    .line 66
    :goto_2
    iget-object p0, p0, Lti3;->b:Llh6;

    .line 67
    .line 68
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 69
    .line 70
    throw p1
.end method
