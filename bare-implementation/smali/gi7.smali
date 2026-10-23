.class public final synthetic Lgi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashMap;I)V
    .locals 0

    .line 1
    iput p3, p0, Lgi7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgi7;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lgi7;->c:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lgi7;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lgi7;->c:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lgi7;->b:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lwm2;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1, p0}, Lwm2;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p1, v0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "Error deleting file with share.rm() at "

    .line 26
    .line 27
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :goto_0
    return-object v1

    .line 41
    :pswitch_0
    iget-object v4, p0, Lgi7;->b:Ljava/lang/String;

    .line 42
    .line 43
    move-object v3, p1

    .line 44
    check-cast v3, Lwm2;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :try_start_1
    sget-object p0, Ls5;->k:Ls5;

    .line 50
    .line 51
    sget-object p1, Ls5;->q:Ls5;

    .line 52
    .line 53
    filled-new-array {p0, p1}, [Ls5;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sget-object p0, Lw63;->c:Lw63;

    .line 62
    .line 63
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget-object v7, Lju6;->e:Ljava/util/Set;

    .line 68
    .line 69
    sget-object p0, Lps6;->c:Lps6;

    .line 70
    .line 71
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const/4 v8, 0x2

    .line 76
    invoke-virtual/range {v3 .. v9}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lmm2;->u()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    move-object p0, v0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "Error deleting file with full access file.deleteOnClose() at "

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :goto_1
    return-object v1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
