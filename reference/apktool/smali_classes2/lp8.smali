.class public final Llp8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgk6;


# instance fields
.field public final synthetic a:Lpp8;


# direct methods
.method public constructor <init>(Lpp8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llp8;->a:Lpp8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lik6;)V
    .locals 3

    .line 1
    iget-object p0, p0, Llp8;->a:Lpp8;

    .line 2
    .line 3
    iget-object p0, p0, Lpp8;->t:Lex6;

    .line 4
    .line 5
    iget-object v0, p1, Lik6;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lhk6;

    .line 8
    .line 9
    sget-object v1, Lkp8;->a:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lq;->j()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    sget-object p1, Ldp8;->a:Ldp8;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_1
    sget-object p1, Lzo8;->a:Lzo8;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    sget-object p1, Lap8;->a:Lap8;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    sget-object p1, Lbp8;->a:Lbp8;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_4
    iget-object p1, p1, Lik6;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Llw1;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-direct {v0, v1}, Llw1;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lre3;->g()Lzc2;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "walls"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lorg/swiftapps/swiftbackup/model/firebase/WallsCloudDetails;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Lorg/swiftapps/swiftbackup/model/firebase/WallsCloudDetails;-><init>(Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 79
    .line 80
    .line 81
    new-instance p1, Lep8;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Lep8;-><init>(Ljava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_5
    sget-object p1, Lcp8;->a:Lcp8;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
