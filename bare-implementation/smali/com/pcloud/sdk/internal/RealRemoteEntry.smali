.class abstract Lcom/pcloud/sdk/internal/RealRemoteEntry;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzi6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pcloud/sdk/internal/RealRemoteEntry$FileEntryDeserializer;,
        Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;
    }
.end annotation


# instance fields
.field private canDelete:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "candelete"
    .end annotation
.end field

.field private canModify:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "canmodify"
    .end annotation
.end field

.field private canRead:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "canread"
    .end annotation
.end field

.field private created:Ljava/util/Date;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "created"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "id"
    .end annotation
.end field

.field private isFolder:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "isfolder"
    .end annotation
.end field

.field private isMine:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "ismine"
    .end annotation
.end field

.field private isShared:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "isshared"
    .end annotation
.end field

.field private lastModified:Ljava/util/Date;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "modified"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "name"
    .end annotation
.end field

.field private parentFolderId:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "parentfolderid"
    .end annotation
.end field


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
    iput-boolean v0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canRead:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canModify:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canDelete:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->created:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isFolder:Z

    .line 2
    .line 3
    return p0
.end method

.method public c()Laj6;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "This entry is not a file"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public d()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->lastModified:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isFolder:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

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
    if-eqz p1, :cond_c

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
    check-cast p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->parentFolderId:J

    .line 22
    .line 23
    iget-wide v3, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->parentFolderId:J

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isFolder:Z

    .line 31
    .line 32
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isFolder:Z

    .line 33
    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->id:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->id:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    return v0

    .line 48
    :cond_4
    iget-object v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    return v0

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->lastModified:Ljava/util/Date;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->lastModified:Ljava/util/Date;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    return v0

    .line 70
    :cond_6
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isMine:Z

    .line 71
    .line 72
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isMine:Z

    .line 73
    .line 74
    if-eq v1, v2, :cond_7

    .line 75
    .line 76
    return v0

    .line 77
    :cond_7
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isShared:Z

    .line 78
    .line 79
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isShared:Z

    .line 80
    .line 81
    if-eq v1, v2, :cond_8

    .line 82
    .line 83
    return v0

    .line 84
    :cond_8
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canRead:Z

    .line 85
    .line 86
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canRead:Z

    .line 87
    .line 88
    if-eq v1, v2, :cond_9

    .line 89
    .line 90
    return v0

    .line 91
    :cond_9
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canModify:Z

    .line 92
    .line 93
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canModify:Z

    .line 94
    .line 95
    if-eq v1, v2, :cond_a

    .line 96
    .line 97
    return v0

    .line 98
    :cond_a
    iget-boolean v1, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canDelete:Z

    .line 99
    .line 100
    iget-boolean v2, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->canDelete:Z

    .line 101
    .line 102
    if-eq v1, v2, :cond_b

    .line 103
    .line 104
    return v0

    .line 105
    :cond_b
    iget-object p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->created:Ljava/util/Date;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/pcloud/sdk/internal/RealRemoteEntry;->created:Ljava/util/Date;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_c
    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-wide v2, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->parentFolderId:J

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    ushr-long v4, v2, v4

    .line 15
    .line 16
    xor-long/2addr v2, v4

    .line 17
    long-to-int v2, v2

    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->lastModified:Ljava/util/Date;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    mul-int/2addr v2, v1

    .line 34
    iget-object v0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->created:Ljava/util/Date;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v2

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget-boolean p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->isFolder:Z

    .line 43
    .line 44
    add-int/2addr v0, p0

    .line 45
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pcloud/sdk/internal/RealRemoteEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
