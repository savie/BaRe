.class public abstract Lqg4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg4$b;,
        Lqg4$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ETag"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Key"
    .end annotation
.end field

.field private c:Lh38$a;
    .annotation runtime Lat2;
        name = "LastModified"
    .end annotation
.end field

.field private d:Lkv5;
    .annotation runtime Lat2;
        name = "Owner"
        required = false
    .end annotation
.end field

.field private e:J
    .annotation runtime Lat2;
        name = "Size"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
        required = false
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lat2;
        name = "IsLatest"
        required = false
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "VersionId"
        required = false
    .end annotation
.end field

.field private i:Lqg4$b;
    .annotation runtime Lat2;
        name = "UserMetadata"
        required = false
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "UserTags"
        required = false
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "ChecksumAlgorithm"
        required = false
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ChecksumType"
        required = false
    .end annotation
.end field

.field private m:Lqg4$a;
    .annotation runtime Lat2;
        name = "RestoreStatus"
        required = false
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lqg4;->n:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lqg4;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lqg4;->o:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lqg4;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lqg4;->n:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqg4;->k:Ljava/util/List;

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

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lpy4$a;

    .line 2
    .line 3
    return p0
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lqg4;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public f()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lqg4;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public g()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->c:Lh38$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lh38$a;->b()Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqg4;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lqg4;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lki8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public i()Lkv5;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->d:Lkv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public j()Lqg4$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->m:Lqg4$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqg4;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqg4;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqg4;->i:Lqg4$b;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lqg4$b;->a()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqg4;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lqg4;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lqg4;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lqg4;->c:Lh38$a;

    .line 16
    .line 17
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v0, Lqg4;->d:Lkv5;

    .line 22
    .line 23
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-wide v5, v0, Lqg4;->e:J

    .line 28
    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, v0, Lqg4;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-boolean v7, v0, Lqg4;->g:Z

    .line 44
    .line 45
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-object v8, v0, Lqg4;->h:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v8}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iget-object v9, v0, Lqg4;->i:Lqg4$b;

    .line 60
    .line 61
    invoke-static {v9}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v10, v0, Lqg4;->j:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v10}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v11, v0, Lqg4;->k:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v11}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    iget-object v12, v0, Lqg4;->l:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v12}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    iget-object v13, v0, Lqg4;->m:Lqg4$a;

    .line 84
    .line 85
    invoke-static {v13}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    iget-boolean v14, v0, Lqg4;->n:Z

    .line 90
    .line 91
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-static {v14}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    iget-object v0, v0, Lqg4;->o:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v15, ", objectName="

    .line 106
    .line 107
    move-object/from16 p0, v0

    .line 108
    .line 109
    const-string v0, ", lastModified="

    .line 110
    .line 111
    move-object/from16 v16, v13

    .line 112
    .line 113
    const-string v13, "etag="

    .line 114
    .line 115
    invoke-static {v13, v1, v15, v2, v0}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, ", owner="

    .line 120
    .line 121
    const-string v2, ", size="

    .line 122
    .line 123
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, ", storageClass="

    .line 127
    .line 128
    const-string v2, ", isLatest="

    .line 129
    .line 130
    invoke-static {v0, v5, v1, v6, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, ", versionId="

    .line 134
    .line 135
    const-string v2, ", userMetadata="

    .line 136
    .line 137
    invoke-static {v0, v7, v1, v8, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v1, ", userTags="

    .line 141
    .line 142
    const-string v2, ", checksumAlgorithm="

    .line 143
    .line 144
    invoke-static {v0, v9, v1, v10, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v1, ", checksumType="

    .line 148
    .line 149
    const-string v2, ", restoreStatus="

    .line 150
    .line 151
    invoke-static {v0, v11, v1, v12, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v1, ", isDir="

    .line 155
    .line 156
    const-string v2, ", encodingType="

    .line 157
    .line 158
    move-object/from16 v3, v16

    .line 159
    .line 160
    invoke-static {v0, v3, v1, v14, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v1, p0

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method
