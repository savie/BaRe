.class public final synthetic Lgr4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgr4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgr4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lgr4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgr4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Llr4;->a:Llr4;

    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    const-string v0, "LabelRepo.saveLabelParams"

    .line 21
    .line 22
    invoke-static {p0, v0}, Ly13;->z(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->getLabelParamsMap()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    sget-object v0, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-static {v0, v1, v3, v2, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->copy$default(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    :cond_2
    new-instance v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 69
    .line 70
    invoke-direct {v0, v1, v3, v2, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;-><init>(Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    new-instance v1, Lbk;

    .line 74
    .line 75
    const/16 v2, 0x1b

    .line 76
    .line 77
    invoke-direct {v1, v0, v2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->getLabelledAppsMap()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;->getLabelIds()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Llr4;->j(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 134
    .line 135
    return-object p0

    .line 136
    :pswitch_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->g(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
