.class public final Loz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqz5;


# instance fields
.field public final synthetic a:Ltz5;

.field public final synthetic b:Lwz5;


# direct methods
.method public constructor <init>(Lwz5;Ltz5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loz5;->b:Lwz5;

    .line 5
    .line 6
    iput-object p2, p0, Loz5;->a:Ltz5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 9

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "ok"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "d"

    .line 16
    .line 17
    iget-object v4, p0, Loz5;->b:Lwz5;

    .line 18
    .line 19
    iget-object p0, p0, Loz5;->a:Ltz5;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map;

    .line 28
    .line 29
    const-string v5, "w"

    .line 30
    .line 31
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/List;

    .line 42
    .line 43
    iget-object v5, p0, Ltz5;->b:Lvz5;

    .line 44
    .line 45
    const-string v6, "no_index"

    .line 46
    .line 47
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v6, "\".indexOn\": \""

    .line 56
    .line 57
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, v5, Lvz5;->b:Ljava/util/HashMap;

    .line 61
    .line 62
    const-string v7, "i"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v6, 0x22

    .line 72
    .line 73
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v6, v4, Lwz5;->y:Lu00;

    .line 81
    .line 82
    const-string v7, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    .line 83
    .line 84
    const-string v8, "\' at "

    .line 85
    .line 86
    invoke-static {v7, v2, v8}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v5, v5, Lvz5;->a:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v5}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, " to your security and Firebase Database rules for better performance"

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v6, v2}, Lu00;->j(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    iget-object v2, v4, Lwz5;->p:Ljava/util/HashMap;

    .line 112
    .line 113
    iget-object v5, p0, Ltz5;->b:Lvz5;

    .line 114
    .line 115
    iget-object v6, p0, Ltz5;->a:Lro;

    .line 116
    .line 117
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ltz5;

    .line 122
    .line 123
    if-ne v2, p0, :cond_2

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    .line 131
    iget-object p0, p0, Ltz5;->b:Lvz5;

    .line 132
    .line 133
    invoke-virtual {v4, p0}, Lwz5;->f(Lvz5;)Ltz5;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v6, v0, p0}, Lro;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_1
    const/4 p0, 0x0

    .line 147
    invoke-virtual {v6, p0, p0}, Lro;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    return-void
.end method
