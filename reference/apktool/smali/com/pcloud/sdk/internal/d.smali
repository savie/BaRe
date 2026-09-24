.class public Lcom/pcloud/sdk/internal/d;
.super Lcom/pcloud/sdk/internal/RealRemoteEntry;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbj6;


# static fields
.field public static final a:Ljava/util/List;


# instance fields
.field private canCreate:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "cancreate "
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzi6;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "contents"
    .end annotation
.end field

.field private folderId:Ljava/lang/Long;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "folderid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/pcloud/sdk/internal/d;->a:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/pcloud/sdk/internal/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/pcloud/sdk/internal/d;->canCreate:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    check-cast p1, Lcom/pcloud/sdk/internal/d;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/pcloud/sdk/internal/d;->folderId:Ljava/lang/Long;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/pcloud/sdk/internal/d;->folderId:Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/d;->canCreate:Z

    .line 40
    .line 41
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/d;->canCreate:Z

    .line 42
    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_5
    :goto_0
    return v0
.end method

.method public final bridge synthetic f()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pcloud/sdk/internal/d;->folderId:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object p0, p0, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v1

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->a()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-super {p0}, Lcom/pcloud/sdk/internal/RealRemoteEntry;->d()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object p0, p0, Lcom/pcloud/sdk/internal/d;->children:Ljava/util/List;

    .line 20
    .line 21
    sget-object v5, Lcom/pcloud/sdk/internal/d;->a:Ljava/util/List;

    .line 22
    .line 23
    if-ne p0, v5, :cond_0

    .line 24
    .line 25
    const-string p0, "?"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "%s | ID:%s | Created:%s | Modified: %s | Child count:%s"

    .line 41
    .line 42
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
