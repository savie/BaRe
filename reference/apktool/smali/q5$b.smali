.class public Lq5$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljk5;
    prefix = "xsi"
    reference = "http://www.w3.org/2001/XMLSchema-instance"
.end annotation

.annotation runtime Lno6;
    name = "Grantee"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lu70;
        name = "type"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "DisplayName"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "EmailAddress"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ID"
        required = false
    .end annotation
.end field

.field private e:Lq5$d;
    .annotation runtime Lat2;
        name = "Type"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "URI"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq5$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lu70;
            name = "type"
        .end annotation
    .end param
    .param p2    # Lq5$d;
        .annotation runtime Lat2;
            name = "Type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "DisplayName"
            required = false
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "EmailAddress"
            required = false
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ID"
            required = false
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "URI"
            required = false
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 20
    invoke-direct/range {v0 .. v5}, Lq5$b;-><init>(Lq5$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p1, v0, Lq5$b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq5$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Type must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lq5$b;->e:Lq5$d;

    .line 10
    .line 11
    iput-object p2, p0, Lq5$b;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lq5$b;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lq5$b;->d:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Lq5$b;->f:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lq5$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lq5$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lq5$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Lq5$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lq5$b;->e:Lq5$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lq5$b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lq5$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lq5$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lq5$b;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lq5$b;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lq5$b;->e:Lq5$d;

    .line 22
    .line 23
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object p0, p0, Lq5$b;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v5, ", displayName="

    .line 34
    .line 35
    const-string v6, ", emailAddress="

    .line 36
    .line 37
    const-string v7, "Grantee{xsiType="

    .line 38
    .line 39
    invoke-static {v7, v0, v5, v1, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, ", id="

    .line 44
    .line 45
    const-string v5, ", type="

    .line 46
    .line 47
    invoke-static {v0, v2, v1, v3, v5}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ", uri="

    .line 51
    .line 52
    const-string v2, "}"

    .line 53
    .line 54
    invoke-static {v0, v4, v1, p0, v2}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
