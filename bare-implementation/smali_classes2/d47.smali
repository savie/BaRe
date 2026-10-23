.class public final synthetic Ld47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lky7;

.field public final synthetic c:Lih6;

.field public final synthetic d:Llh6;

.field public final synthetic e:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lky7;Lih6;Llh6;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld47;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Ld47;->b:Lky7;

    .line 7
    .line 8
    iput-object p3, p0, Ld47;->c:Lih6;

    .line 9
    .line 10
    iput-object p4, p0, Ld47;->d:Llh6;

    .line 11
    .line 12
    iput-object p5, p0, Ld47;->e:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Ld47;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Lfq1;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    new-instance v1, Lc40;

    .line 18
    .line 19
    new-instance v3, Lb40;

    .line 20
    .line 21
    invoke-direct {v3}, Lb40;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Ld47;->b:Lky7;

    .line 25
    .line 26
    invoke-direct {v1, v0, v4, v3}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 27
    .line 28
    .line 29
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v3, "Added "

    .line 38
    .line 39
    const-string v4, " tasks"

    .line 40
    .line 41
    invoke-static {v0, v3, v4}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v9, 0x4

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ld47;->c:Lih6;

    .line 52
    .line 53
    iget-boolean v0, v0, Lih6;->a:Z

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Ld47;->d:Llh6;

    .line 61
    .line 62
    iget-object v0, v0, Llh6;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;

    .line 69
    .line 70
    invoke-direct {v0, v4, v5, v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 75
    .line 76
    invoke-direct {v0, v4, v5, v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 80
    .line 81
    iget-object p0, p0, Ld47;->e:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method
