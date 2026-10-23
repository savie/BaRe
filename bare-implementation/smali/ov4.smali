.class public final Lov4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/StringBuilder;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:C

.field public h:Ljava/lang/StringBuilder;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lov4;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lov4;->b:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lov4;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lov4;->i:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lov4;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lov4;->f:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lfy2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lov4;->h:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lfy2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    :goto_0
    new-instance v3, Lnv4;

    .line 28
    .line 29
    iget-object v4, p0, Lov4;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v3}, Lon5;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v4, v3, Lnv4;->f:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, v3, Lnv4;->g:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, v3, Lnv4;->h:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p0, Lov4;->c:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lov4;->d:Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lov4;->i:Z

    .line 49
    .line 50
    iput-object v2, p0, Lov4;->e:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, p0, Lov4;->f:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, p0, Lov4;->h:Ljava/lang/StringBuilder;

    .line 55
    .line 56
    return-void
.end method
