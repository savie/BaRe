.class public Lqj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqj6$c;,
        Lqj6$m;,
        Lqj6$h;,
        Lqj6$l;,
        Lqj6$f;,
        Lqj6$j;,
        Lqj6$i;,
        Lqj6$g;,
        Lqj6$e;,
        Lqj6$a;,
        Lqj6$d;,
        Lqj6$b;,
        Lqj6$k;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ReplicationConfiguration"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Role"
        required = false
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqj6$k;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "Rule"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Role"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lgt2;
            inline = true
            name = "Rule"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lqj6$k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqj6;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "Rules must not be null"

    .line 7
    .line 8
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-object p1, p2

    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    sget-object v0, Lki8;->a:Lzy5;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lqj6;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/16 p2, 0x3e8

    .line 34
    .line 35
    if-gt p0, p2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "More than 1000 rules are not supported"

    .line 39
    .line 40
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    const-string p0, "Rules must not be empty"

    .line 45
    .line 46
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lqj6$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqj6;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Lki8;->f(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lqj6;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lqj6;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", rules="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "ReplicationConfiguration{role="

    .line 18
    .line 19
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
