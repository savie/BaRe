.class public abstract Lzg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lq63;Lq63;ZLbt3;Lfv;Lgv;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p3, p4}, Lky;->a(Lq63;Lq63;Lbt3;Lrt3;)Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 p4, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const-string p1, "Extracting splits failed: "

    .line 14
    .line 15
    invoke-static {p0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, 0x0

    .line 21
    const-string v1, "ApkInstallSetPreparer"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p4

    .line 28
    :cond_0
    invoke-virtual {p1}, Lq63;->B()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-eqz p3, :cond_7

    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-static {p3, p1, p5}, Lth5;->b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    const-string p1, "No decompressed split files from "

    .line 56
    .line 57
    invoke-static {p0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v4, 0x4

    .line 62
    const/4 v5, 0x0

    .line 63
    const-string v1, "ApkInstallSetPreparer"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object p4

    .line 70
    :cond_3
    invoke-virtual {p1}, Lq63;->B()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    new-instance p4, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    move-object p2, p1

    .line 96
    check-cast p2, Lq63;

    .line 97
    .line 98
    invoke-virtual {p2}, Lq63;->m()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string p3, "apk"

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    if-nez p4, :cond_6

    .line 115
    .line 116
    sget-object p4, Lov2;->a:Lov2;

    .line 117
    .line 118
    :cond_6
    new-instance p0, Lxg;

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lxg;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance p2, Lyg;

    .line 125
    .line 126
    invoke-direct {p2, p0, p1}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 127
    .line 128
    .line 129
    invoke-static {p4, p2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :cond_7
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 135
    .line 136
    const-string p1, "No split files unpacked from "

    .line 137
    .line 138
    invoke-static {p0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v4, 0x4

    .line 143
    const/4 v5, 0x0

    .line 144
    const-string v1, "ApkInstallSetPreparer"

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object p4
.end method
