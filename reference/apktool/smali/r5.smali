.class public Lr5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lno6;
    name = "AccessControlPolicy"
    strict = false
.end annotation


# instance fields
.field private a:Lkv5;
    .annotation runtime Lat2;
        name = "Owner"
        required = false
    .end annotation
.end field

.field private b:Lq5;
    .annotation runtime Lat2;
        name = "AccessControlList"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkv5;Lq5;)V
    .locals 0
    .param p1    # Lkv5;
        .annotation runtime Lat2;
            name = "Owner"
            required = false
        .end annotation
    .end param
    .param p2    # Lq5;
        .annotation runtime Lat2;
            name = "AccessControlList"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr5;->a:Lkv5;

    .line 5
    .line 6
    iput-object p2, p0, Lr5;->b:Lq5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lq5;
    .locals 0

    .line 1
    iget-object p0, p0, Lr5;->b:Lq5;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lr5;->b:Lq5;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lq5;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-lt v2, v3, :cond_8

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-le v2, v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_8

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lq5$a;

    .line 39
    .line 40
    if-nez v5, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v5}, Lq5$a;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5}, Lq5$a;->d()Lq5$c;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    sget-object v8, Lq5$c;->a:Lq5$c;

    .line 52
    .line 53
    if-ne v7, v8, :cond_4

    .line 54
    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const-string p0, "private"

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_4
    invoke-virtual {v5}, Lq5$a;->d()Lq5$c;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    sget-object v8, Lq5$c;->d:Lq5$c;

    .line 71
    .line 72
    const-string v9, "http://acs.amazonaws.com/groups/global/AllUsers"

    .line 73
    .line 74
    if-ne v7, v8, :cond_7

    .line 75
    .line 76
    const/4 v7, 0x2

    .line 77
    if-ne v2, v7, :cond_7

    .line 78
    .line 79
    const-string v7, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    .line 80
    .line 81
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    const-string p0, "authenticated-read"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_5
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    const-string p0, "public-read"

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_6
    iget-object v6, p0, Lr5;->a:Lkv5;

    .line 100
    .line 101
    invoke-virtual {v6}, Lkv5;->b()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    invoke-virtual {v5}, Lq5$a;->b()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    iget-object v6, p0, Lr5;->a:Lkv5;

    .line 114
    .line 115
    invoke-virtual {v6}, Lkv5;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5}, Lq5$a;->b()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_2

    .line 128
    .line 129
    const-string p0, "bucket-owner-read"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_7
    invoke-virtual {v5}, Lq5$a;->d()Lq5$c;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    sget-object v7, Lq5$c;->b:Lq5$c;

    .line 137
    .line 138
    if-ne v5, v7, :cond_2

    .line 139
    .line 140
    if-ne v2, v4, :cond_2

    .line 141
    .line 142
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_2

    .line 147
    .line 148
    const-string p0, "public-read-write"

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_8
    :goto_1
    return-object v1
.end method

.method public c()Lti5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lti5;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5;->b:Lq5;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    new-instance v0, Ly24;

    .line 6
    .line 7
    invoke-direct {v0}, Ly24;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lr5;->b:Lq5;

    .line 11
    .line 12
    invoke-virtual {p0}, Lq5;->a()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lq5$a;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "id="

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lq5$a;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lq5$a;->d()Lq5$c;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v4, Lq5$c;->d:Lq5$c;

    .line 58
    .line 59
    if-ne v3, v4, :cond_2

    .line 60
    .line 61
    const-string v1, "X-Amz-Grant-Read"

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v1}, Lq5$a;->d()Lq5$c;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v4, Lq5$c;->b:Lq5$c;

    .line 72
    .line 73
    if-ne v3, v4, :cond_3

    .line 74
    .line 75
    const-string v1, "X-Amz-Grant-Write"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v1}, Lq5$a;->d()Lq5$c;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lq5$c;->e:Lq5$c;

    .line 86
    .line 87
    if-ne v3, v4, :cond_4

    .line 88
    .line 89
    const-string v1, "X-Amz-Grant-Read-Acp"

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v1}, Lq5$a;->d()Lq5$c;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Lq5$c;->c:Lq5$c;

    .line 100
    .line 101
    if-ne v3, v4, :cond_5

    .line 102
    .line 103
    const-string v1, "X-Amz-Grant-Write-Acp"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v1}, Lq5$a;->d()Lq5$c;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v3, Lq5$c;->a:Lq5$c;

    .line 114
    .line 115
    if-ne v1, v3, :cond_0

    .line 116
    .line 117
    const-string v1, "X-Amz-Grant-Full-Control"

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    return-object v0

    .line 124
    :cond_7
    const/4 p0, 0x0

    .line 125
    return-object p0
.end method

.method public d()Lkv5;
    .locals 0

    .line 1
    iget-object p0, p0, Lr5;->a:Lkv5;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lr5;->a:Lkv5;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lr5;->b:Lq5;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", accessControlList="

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    const-string v3, "AccessControlPolicy(owner="

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
