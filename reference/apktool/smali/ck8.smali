.class public Lck8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lck8$a;,
        Lck8$b;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "VersioningConfiguration"
    strict = false
.end annotation


# instance fields
.field private a:Lck8$b;
    .annotation runtime Lat2;
        name = "Status"
        required = false
    .end annotation
.end field

.field private b:Lck8$b;
    .annotation runtime Lat2;
        name = "MfaDelete"
        required = false
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lck8$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "ExcludedPrefixes"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation runtime Lat2;
        name = "ExcludeFolders"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lck8$b;Lck8$b;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lck8$b;",
            "Lck8$b;",
            "Ljava/util/List<",
            "Lck8$a;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Status must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lck8$b;->b:Lck8$b;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "Status must be ENABLED or SUSPENDED"

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    if-eq p2, v0, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Lck8;->a:Lck8$b;

    .line 19
    .line 20
    iput-object p2, p0, Lck8;->b:Lck8$b;

    .line 21
    .line 22
    iput-object p3, p0, Lck8;->c:Ljava/util/List;

    .line 23
    .line 24
    iput-object p4, p0, Lck8;->d:Ljava/lang/Boolean;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v2}, Lc6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :cond_1
    invoke-static {v2}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lck8;->d:Ljava/lang/Boolean;

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
            "Lck8$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lck8;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object p0, p0, Lck8;->b:Lck8$b;

    .line 2
    .line 3
    sget-object v0, Lck8$b;->c:Lck8$b;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public d()Lck8$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lck8;->b:Lck8$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lck8$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lck8;->a:Lck8$b;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lck8$b;->b:Lck8$b;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lck8;->a:Lck8$b;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lck8;->b:Lck8$b;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lck8;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lck8;->d:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v3, ", mfaDelete="

    .line 26
    .line 27
    const-string v4, ", excludedPrefixes="

    .line 28
    .line 29
    const-string v5, "VersioningConfiguration{status="

    .line 30
    .line 31
    invoke-static {v5, v0, v3, v1, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, ", excludeFolders="

    .line 36
    .line 37
    const-string v3, "}"

    .line 38
    .line 39
    invoke-static {v0, v2, v1, p0, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
